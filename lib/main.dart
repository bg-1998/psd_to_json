import 'dart:io';

import 'package:flutter/material.dart';

import 'psd2json.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PSD 转 JSON',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2563EB)),
        scaffoldBackgroundColor: const Color(0xFFF8FAFC),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'PSD 转 JSON'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PsdParseResult? _result;

  @override
  Widget build(BuildContext context) {
    final result = _result;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: Text(widget.title),
      ),
      body: result == null ? _buildEmptyState(context) : _buildResult(result),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _openParser,
        icon: const Icon(Icons.upload_file),
        label: Text(result == null ? '选择 PSD' : '重新解析'),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.layers_outlined,
              size: 72,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 18),
            const Text(
              '选择 PSD 文件后，会在手机端完成解析。',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            Text(
              '解析结果会保存 JSON 文件，图层图片会保存到 App 文档目录。',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey.shade600, height: 1.4),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResult(PsdParseResult result) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 96),
      children: [
        _SummaryCard(result: result),
        const SizedBox(height: 16),
        if (result.issues.isNotEmpty) ...[
          Text(
            '处理问题',
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 10),
          _IssueList(issues: result.issues),
          const SizedBox(height: 16),
        ],
        if (result.imagePaths.isNotEmpty) ...[
          Text(
            '图片预览',
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 10),
          _ImagePathList(paths: result.imagePaths),
          const SizedBox(height: 16),
        ],
        Text(
          'JSON 数据',
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 10),
        _JsonPanel(result: result),
      ],
    );
  }

  void _openParser() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext dialogContext) {
        return Psd2JsonDialog(
          onParsed: (PsdParseResult result) {
            setState(() {
              _result = result;
            });
          },
        );
      },
    );
  }
}

class _SummaryCard extends StatelessWidget {
  final PsdParseResult result;

  const _SummaryCard({required this.result});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            result.fileName,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _MetricChip(
                label: '尺寸',
                value: '${result.width ?? '-'} x ${result.height ?? '-'}',
              ),
              _MetricChip(label: '图片', value: '${result.imageCount} 张'),
              _MetricChip(label: '问题', value: '${result.issues.length} 个'),
              _MetricChip(label: '大小', value: _formatBytes(result.fileSize)),
            ],
          ),
        ],
      ),
    );
  }

  String _formatBytes(int bytes) {
    if (bytes <= 0) {
      return '-';
    }
    const units = ['B', 'KB', 'MB', 'GB'];
    var size = bytes.toDouble();
    var index = 0;
    while (size >= 1024 && index < units.length - 1) {
      size /= 1024;
      index += 1;
    }
    return '${size.toStringAsFixed(index == 0 ? 0 : 1)} ${units[index]}';
  }
}

class _IssueList extends StatelessWidget {
  final List<PsdParseIssue> issues;

  const _IssueList({required this.issues});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFBEB),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFF59E0B)),
      ),
      child: ListView.separated(
        itemCount: issues.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) {
          return const Divider(height: 1, color: Color(0xFFFDE68A));
        },
        itemBuilder: (context, index) {
          final issue = issues[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${issue.stage}  ${issue.target}',
                  style: const TextStyle(
                    color: Color(0xFF92400E),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 4),
                SelectableText(
                  issue.message,
                  style: const TextStyle(
                    color: Color(0xFF78350F),
                    fontSize: 12,
                    height: 1.35,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _MetricChip extends StatelessWidget {
  final String label;
  final String value;

  const _MetricChip({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F5F9),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        '$label  $value',
        style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
      ),
    );
  }
}

class _ImagePathList extends StatelessWidget {
  final List<String> paths;

  const _ImagePathList({required this.paths});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: ListView.separated(
        itemCount: paths.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) {
          return const Divider(height: 1, color: Color(0xFFE5E7EB));
        },
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${index + 1}.',
                      style: TextStyle(
                        color: Colors.blueGrey.shade600,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: SelectableText(
                        paths[index],
                        style: const TextStyle(
                          fontSize: 12,
                          height: 1.35,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.file(
                    File(paths[index]),
                    height: 120,
                    width: double.infinity,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        height: 120,
                        width: double.infinity,
                        color: Colors.grey.shade100,
                        child: Center(
                          child: Text(
                            '无法加载图片',
                            style: TextStyle(color: Colors.grey.shade600),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _JsonPanel extends StatelessWidget {
  final PsdParseResult result;

  const _JsonPanel({required this.result});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF111827),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '完整文本文件',
            style: TextStyle(
              color: Color(0xFFE5E7EB),
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          SelectableText(
            result.jsonPath.isEmpty ? '文本文件保存失败，见处理问题。' : result.jsonPath,
            style: const TextStyle(
              color: Color(0xFFE5E7EB),
              fontFamily: 'monospace',
              fontSize: 12,
              height: 1.35,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'JSON 预览',
            style: const TextStyle(
              color: Color(0xFFE5E7EB),
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          SelectableText(
            result.jsonPreview,
            style: const TextStyle(
              color: Color(0xFFE5E7EB),
              fontSize: 12,
              height: 1.35,
            ),
          ),
        ],
      ),
    );
  }
}
