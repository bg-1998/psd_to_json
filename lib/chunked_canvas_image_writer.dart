import 'dart:convert';
import 'dart:ffi' as ffi;
import 'dart:io';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

import 'chunked_image_bindings.dart';

class ChunkedCanvasImageWriter {
  static final ChunkedImageBindings _bindings = ChunkedImageBindings(
    _openDynamicLibrary(),
  );

  final String filePath;
  final int width;
  final int height;
  final ffi.Pointer<ImageContext> _context;
  int _writtenRows = 0;
  bool _closed = false;

  ChunkedCanvasImageWriter._({
    required this.filePath,
    required this.width,
    required this.height,
    required ffi.Pointer<ImageContext> context,
  }) : _context = context;

  static ChunkedCanvasImageWriter create({
    required String filePath,
    required int width,
    required int height,
  }) {
    final cPath = filePath.toNativeUtf8();
    try {
      final context = _bindings.createPngContext(
        cPath.cast<ffi.Char>(),
        width,
        height,
      );
      if (context.address == 0) {
        throw StateError('创建 PNG 写入上下文失败');
      }
      return ChunkedCanvasImageWriter._(
        filePath: filePath,
        width: width,
        height: height,
        context: context,
      );
    } finally {
      calloc.free(cPath);
    }
  }

  int appendBase64RgbaChunk({
    required String base64,
    required int rows,
    required int srcStride,
  }) {
    if (_closed) {
      throw StateError('PNG 写入上下文已关闭');
    }
    if (rows <= 0 || srcStride <= 0) {
      throw ArgumentError('rows 和 srcStride 必须大于 0');
    }

    final bytes = base64Decode(base64);
    final expectedLength = rows * srcStride;
    if (bytes.lengthInBytes != expectedLength) {
      throw StateError(
        'RGBA 分块大小不匹配：${bytes.lengthInBytes}/$expectedLength bytes',
      );
    }

    final sourcePointer = _copyToPointer(bytes);
    try {
      final result = _bindings.writePngData(
        _context,
        sourcePointer,
        srcStride,
        rows,
      );
      if (result != 0 && result != 1) {
        throw StateError('写入 PNG 分块失败：$result');
      }
      _writtenRows += rows;
      return _writtenRows;
    } finally {
      calloc.free(sourcePointer);
    }
  }

  Future<String> finish() async {
    if (_closed) {
      return filePath;
    }
    _closed = true;
    if (_writtenRows != height) {
      throw StateError('PNG 行数不完整：$_writtenRows/$height');
    }
    final result = _bindings.savePngImage(_context);
    if (result != 0) {
      throw StateError('保存 PNG 失败：$result');
    }
    final file = File(filePath);
    if (!await file.exists() || await file.length() <= 0) {
      throw StateError('PNG 文件未写入：$filePath');
    }
    return filePath;
  }

  ffi.Pointer<ffi.Uint8> _copyToPointer(Uint8List bytes) {
    final pointer = calloc<ffi.Uint8>(bytes.lengthInBytes);
    pointer.asTypedList(bytes.lengthInBytes).setAll(0, bytes);
    return pointer;
  }
}

ffi.DynamicLibrary _openDynamicLibrary() {
  const libName = 'chunked_widget_to_image';
  if (Platform.isMacOS || Platform.isIOS) {
    return ffi.DynamicLibrary.open('$libName.framework/$libName');
  }
  if (Platform.isAndroid || Platform.isLinux) {
    return ffi.DynamicLibrary.open('lib$libName.so');
  }
  if (Platform.isWindows) {
    return ffi.DynamicLibrary.open('$libName.dll');
  }
  throw UnsupportedError('Unknown platform: ${Platform.operatingSystem}');
}
