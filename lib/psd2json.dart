import 'dart:convert';
import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:path_provider/path_provider.dart';

import 'chunked_canvas_image_writer.dart';
import 'psd_entity.dart';

class PsdParseResult {
  final String fileName;
  final int fileSize;
  final int imageCount;
  final num? width;
  final num? height;
  final List<String> imagePaths;
  final String jsonPath;
  final String jsonPreview;
  final List<PsdParseIssue> issues;

  const PsdParseResult({
    required this.fileName,
    required this.fileSize,
    required this.imageCount,
    required this.width,
    required this.height,
    required this.imagePaths,
    required this.jsonPath,
    required this.jsonPreview,
    required this.issues,
  });

  static Future<PsdParseResult> fromBridge(Map<String, dynamic> data) async {
    final images = (data['images'] as List<dynamic>? ?? const [])
        .map((image) {
          if (image is String) {
            return image;
          }
          if (image is Map) {
            return image['imageUrl'];
          }
          return null;
        })
        .whereType<String>()
        .toList(growable: false);
    final issues = (data['issues'] as List<dynamic>? ?? const [])
        .whereType<Map>()
        .map((issue) => PsdParseIssue.fromBridge(issue))
        .toList(growable: false);
    final fileName = data['fileName'] as String? ?? '未命名 PSD';
    final psdMap = Map<String, dynamic>.from(data['psd'] as Map);
    final psdEntity = PsdEntity.fromJson(psdMap);
    final jsonText = const JsonEncoder.withIndent(
      '  ',
    ).convert(psdEntity.toJson());
    String jsonPath = '';
    try {
      jsonPath = await _saveJsonTextFile(fileName, jsonText);
    } catch (error) {
      issues.add(
        PsdParseIssue(
          stage: 'json',
          target: fileName,
          message: error.toString(),
        ),
      );
    }

    return PsdParseResult(
      fileName: fileName,
      fileSize: (data['fileSize'] as num?)?.toInt() ?? 0,
      imageCount: (data['imageCount'] as num?)?.toInt() ?? images.length,
      width: psdEntity.width,
      height: psdEntity.height,
      imagePaths: images,
      jsonPath: jsonPath,
      jsonPreview: jsonText,
      issues: issues,
    );
  }

  static Future<String> _saveJsonTextFile(
    String fileName,
    String jsonText,
  ) async {
    final directory = await getTemporaryDirectory();
    final txtDirectory = Directory('${directory!.path}/psd_json');
    if (!await txtDirectory.exists()) {
      await txtDirectory.create(recursive: true);
    }
    final safeName = fileName
        .replaceAll(RegExp(r'\.[^.]+$'), '')
        .trim()
        .replaceAll(RegExp(r'[^\w\-.]+'), '_')
        .replaceAll(RegExp(r'_+'), '_');
    final file = File(
      '${txtDirectory.path}/${safeName.isEmpty ? 'psd' : safeName}_${DateTime.now().millisecondsSinceEpoch}.txt',
    );
    await file.writeAsString(jsonText, flush: true);
    return file.path;
  }
}

class PsdParseIssue {
  final String stage;
  final String target;
  final String message;

  const PsdParseIssue({
    required this.stage,
    required this.target,
    required this.message,
  });

  factory PsdParseIssue.fromBridge(Map<dynamic, dynamic> data) {
    return PsdParseIssue(
      stage: data['stage']?.toString() ?? 'unknown',
      target: data['target']?.toString() ?? '',
      message: data['message']?.toString() ?? '',
    );
  }
}

class Psd2JsonDialog extends StatefulWidget {
  final ValueChanged<PsdParseResult> onParsed;

  const Psd2JsonDialog({super.key, required this.onParsed});

  @override
  Psd2JsonState createState() => Psd2JsonState();
}

class Psd2JsonState extends State<Psd2JsonDialog> {
  InAppWebViewController? webViewController;
  final Map<String, _ImageSaveSession> _imageSaveSessions = {};
  String _status = '等待选择 PSD 文件';
  bool _isParsing = false;

  @override
  void dispose() {
    for (final session in _imageSaveSessions.values) {
      session.dispose();
    }
    _imageSaveSessions.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: SizedBox(
        width: size.width,
        height: size.height * 0.62,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 14, 8, 10),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'PSD 转换',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  IconButton(
                    tooltip: '关闭',
                    onPressed: _isParsing ? null : () => Navigator.pop(context),
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
            ),
            Expanded(
              child: InAppWebView(
                initialFile: "assets/html/psd-index.html",
                onWebViewCreated: (controller) async {
                  webViewController = controller;
                  webViewController?.addJavaScriptHandler(
                    handlerName: 'showLoading',
                    callback: (args) async {
                      _updateStatus(
                        args.isNotEmpty ? args.first.toString() : '正在解析中...',
                        isParsing: true,
                      );
                    },
                  );
                  webViewController?.addJavaScriptHandler(
                    handlerName: 'startImageSave',
                    callback: (args) async {
                      final payload = Map<String, dynamic>.from(args.first);
                      final directoryPath = await getImageDirectoryPath();
                      final name = _safeFileName(
                        payload['name']?.toString() ?? 'layer',
                      );
                      final id = _safeFileName(
                        payload['id']?.toString() ?? payload['path'].toString(),
                      );
                      final filePath =
                          '${directoryPath}layer_${id}_${name}_${DateTime.now().millisecondsSinceEpoch}.png';
                      await File(filePath).create(recursive: true);
                      final width = (payload['width'] as num).toInt();
                      final height = (payload['height'] as num).toInt();
                      final transferId =
                          '${DateTime.now().microsecondsSinceEpoch}_${_imageSaveSessions.length}';
                      _imageSaveSessions[transferId] = _ImageSaveSession(
                        writer: ChunkedCanvasImageWriter.create(
                          filePath: filePath,
                          width: width,
                          height: height,
                        ),
                      );
                      return {'transferId': transferId, 'filePath': filePath};
                    },
                  );
                  webViewController?.addJavaScriptHandler(
                    handlerName: 'appendImageChunk',
                    callback: (args) async {
                      final payload = Map<String, dynamic>.from(args.first);
                      final transferId = payload['transferId'] as String;
                      final session = _imageSaveSessions[transferId];
                      if (session == null) {
                        throw StateError('图片保存会话不存在：$transferId');
                      }
                      return session.writer.appendBase64RgbaChunk(
                        base64: payload['base64'] as String,
                        rows: (payload['rows'] as num).toInt(),
                        srcStride: (payload['srcStride'] as num).toInt(),
                      );
                    },
                  );
                  webViewController?.addJavaScriptHandler(
                    handlerName: 'finishImageSave',
                    callback: (args) async {
                      final payload = Map<String, dynamic>.from(args.first);
                      final transferId = payload['transferId'] as String;
                      final session = _imageSaveSessions.remove(transferId);
                      if (session == null) {
                        throw StateError('图片保存会话不存在：$transferId');
                      }
                      return session.writer.finish();
                    },
                  );
                  webViewController?.addJavaScriptHandler(
                    handlerName: 'abortImageSave',
                    callback: (args) async {
                      final payload = Map<String, dynamic>.from(args.first);
                      final transferId = payload['transferId'] as String?;
                      if (transferId == null) {
                        return false;
                      }
                      final session = _imageSaveSessions.remove(transferId);
                      session?.dispose(deleteFile: true);
                      return true;
                    },
                  );
                  webViewController?.addJavaScriptHandler(
                    handlerName: 'psdUpdated',
                    callback: (args) async {
                      if (args.isNotEmpty && args.first is Map) {
                        final data = Map<String, dynamic>.from(args.first);
                        final result = await PsdParseResult.fromBridge(data);
                        widget.onParsed(result);
                        await webViewController?.loadData(
                          data: '<html></html>',
                        );
                        if (context.mounted) {
                          Navigator.of(context).pop();
                        }
                      }
                    },
                  );
                  webViewController?.addJavaScriptHandler(
                    handlerName: 'parseError',
                    callback: (args) async {
                      _updateStatus(
                        args.isNotEmpty ? args.first.toString() : '解析失败',
                        isParsing: false,
                      );
                      return null;
                    },
                  );
                },
                initialSettings: InAppWebViewSettings(
                  javaScriptEnabled: true,
                  cacheMode: CacheMode.LOAD_NO_CACHE,
                  transparentBackground: true,
                ),
                onLoadStop: (controller, url) async {},
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 14),
              decoration: const BoxDecoration(
                border: Border(top: BorderSide(color: Color(0xFFE5E7EB))),
              ),
              child: Text(
                _status,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: _isParsing ? Colors.blueGrey.shade800 : Colors.black54,
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _updateStatus(String status, {required bool isParsing}) {
    if (!mounted) {
      return;
    }
    setState(() {
      _status = status;
      _isParsing = isParsing;
    });
  }

  Future<String> getImageDirectoryPath() async {
    final directory = await getTemporaryDirectory();
    final imageDirectory = Directory("${directory.path}/psd_layers");
    bool exists = await imageDirectory.exists();
    if (!exists) {
      await imageDirectory.create(recursive: true);
    }
    return "${imageDirectory.path}/";
  }

  String _safeFileName(String value) {
    final safe = value
        .trim()
        .replaceAll(RegExp(r'[^\w\-.]+'), '_')
        .replaceAll(RegExp(r'_+'), '_');
    return safe.isEmpty ? 'layer' : safe;
  }
}

class _ImageSaveSession {
  final ChunkedCanvasImageWriter writer;

  _ImageSaveSession({required this.writer});

  void dispose({bool deleteFile = false}) {
    if (deleteFile) {
      File(writer.filePath).delete().ignore();
    }
  }
}
