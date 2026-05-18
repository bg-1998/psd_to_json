# psd_to_json

一个创新的 Flutter PSD 解析方案，通过 H5 桥接 + 分块图片编码技术，完美解决大型 PSD 文件解析时的 OOM（内存溢出）问题。

## ✨ 核心特性

- 🚀 **超低内存占用**：分块处理技术将内存占用降低 99%+
- 🎯 **完整图层支持**：保留所有图层信息、效果和样式
- 📱 **跨平台兼容**：支持 iOS、Android、macOS、Windows
- ⚡ **流式处理**：边解析边保存，无需等待全部完成
- 🔧 **易于集成**：基于成熟的 ag-psd 库和 flutter_inappwebview

## 📊 性能对比

| 方案 | 单图层内存峰值 | 50 图层总峰值 | OOM 风险 |
|------|--------------|-------------|----------|
| 传统方案 | ~16 MB | ~800 MB | ⚠️ 极高 |
| 本方案 | ~128 KB | ~6.4 MB | ✅ 极低 |

## 🏗️ 技术架构

整个方案分为三个核心部分：

1. **H5 解析层**：使用 `ag-psd` 库在 WebView 中解析 PSD 文件
2. **Flutter 桥接层**：通过 `flutter_inappwebview` 实现双向通信
3. **分块编码层**：利用 FFI 调用 C 库，逐行写入 PNG 数据

### 技术栈

```yaml
dependencies:
  flutter_inappwebview: ^6.2.0-beta.2  # WebView 容器
  chunked_widget_to_image: ^1.0.1       # 分块图片编码
  ffi: ^2.2.0                           # FFI 支持
  path_provider: ^2.1.5                 # 路径管理
  json_annotation: ^4.9.0               # JSON 序列化
```

## 🔄 工作流程

```
用户选择 PSD 文件
       ↓
┌──────────────────────┐
│  H5: FileReader 读取  │
└──────────────────────┘
       ↓
┌──────────────────────┐
│  H5: ag-psd 解析 PSD  │
└──────────────────────┘
       ↓
┌──────────────────────────┐
│  H5: 递归遍历所有图层     │
└──────────────────────────┘
       ↓
┌──────────────────────────────┐
│  H5: 对每个图层执行：         │
│  1. 调用 startImageSave      │
│  2. 分块读取 Canvas 数据     │
│  3. 逐块调用 appendImageChunk│
│  4. 调用 finishImageSave     │
└──────────────────────────────┘
       ↓
┌─────────────────────────────────┐
│  Flutter: 创建写入会话           │
│  ChunkedCanvasImageWriter.create│
└─────────────────────────────────┘
       ↓
┌──────────────────────────────────┐
│  Flutter: 逐块写入 PNG           │
│  1. Base64 解码                  │
│  2. 复制到 Native 内存           │
│  3. 调用 libpng 写入             │
└──────────────────────────────────┘
       ↓
┌──────────────────────────────┐
│  Flutter: 完成 PNG 编码       │
│  保存到本地文件系统            │
└──────────────────────────────┘
       ↓
┌──────────────────────────────┐
│  H5: 清理 PSD 数据结构        │
│  移除 Canvas/ImageData       │
└──────────────────────────────┘
       ↓
┌──────────────────────────────┐
│  H5: 发送最终结果给 Flutter   │
│  - JSON 结构数据              │
│  - 图片文件路径列表           │
└──────────────────────────────┘
       ↓
┌──────────────────────────────┐
│  Flutter: 保存 JSON 文件      │
│  展示解析结果                  │
└──────────────────────────────┘

## 💡 核心优化技巧

### H5 端优化

✅ **分块大小动态计算**
```javascript
const rowsPerChunk = Math.floor(128 * 1024 / (width * 4));
```

✅ **主动让出主线程**
```javascript
await waitForNextFrame(); // requestAnimationFrame
```

✅ **及时释放内存**
```javascript
canvas.width = 1;
canvas.height = 1;
delete layer.canvas;
```

✅ **Base64 分段编码**
```javascript
const subChunkSize = 0x10000; // 64KB
```

### Flutter 端优化

✅ **会话化管理**
```dart
final Map<String, _ImageSaveSession> _imageSaveSessions = {};
```

✅ **Native 内存及时释放**
```dart
finally {
  calloc.free(sourcePointer);
}
```

✅ **完整性校验**
```dart
if (_writtenRows != height) {
  throw StateError('PNG 行数不完整');
}
```

## ❓ 常见问题

### Q1: 为什么选择 ag-psd 而不是其他库？

**A**: ag-psd 是目前最成熟的 JavaScript PSD 解析库，具有以下优势：
- 完整的图层信息解析（包括效果、文本、矢量蒙版等）
- 支持 Canvas 导出，便于后续处理
- 活跃的社区维护和良好的文档

### Q2: 为什么不直接在 Flutter 端解析 PSD？

**A**: 
1. Dart 生态缺乏成熟的 PSD 解析库
2. 使用 FFI 调用 C/C++ 库会增加包体积和复杂度
3. H5 方案更灵活，易于调试和更新

### Q3: 为什么不用 psd_sdk + FFI？

**A**: 评估 psd_sdk（C++ 库）方案，但发现存在以下问题：

1. **接入成本高**
   - 需要通过 FFI 编写大量 C/C++ 绑定代码
   - 跨语言调用栈调试困难，内存管理容易出错
   - 需要处理不同平台的编译和适配

2. **编译成本高**
   - 各平台需要单独编译动态库
   - CI/CD 流程复杂，构建时间显著增加

3. **需要自己解析 PSD DOM**
   - psd_sdk 只提供底层数据读取，不构建完整的图层树结构
   - 需要自行实现图层关系、效果、样式等高级特性的解析逻辑

相比之下，H5 + ag-psd 方案可以直接获得完整的 PSD DOM 结构，开发效率更高，包体积更小，更适合移动端 Flutter 应用。

## 📁 项目结构

```
psd_to_json/
├── assets/html/
│   ├── psd-bundle.js          # ag-psd 库
│   └── psd-index.html         # H5 解析页面
├── lib/
│   ├── main.dart              # 入口文件
│   ├── psd2json.dart          # PSD 解析主逻辑
│   ├── chunked_canvas_image_writer.dart  # 分块图片写入器
│   ├── chunked_image_bindings.dart       # FFI 绑定
│   ├── psd_entity.dart        # PSD 数据模型
│   └── psd_child_entity.dart  # 图层子元素模型
├── android/                   # Android 平台配置
├── ios/                       # iOS 平台配置
├── macos/                     # macOS 平台配置
└── windows/                   # Windows 平台配置
```
