import 'dart:ffi' as ffi;

class ChunkedImageBindings {
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
  _lookup;

  ChunkedImageBindings(ffi.DynamicLibrary dynamicLibrary)
    : _lookup = dynamicLibrary.lookup;

  late final _createPngContext =
      _lookup<
            ffi.NativeFunction<
              ffi.Pointer<ImageContext> Function(
                ffi.Pointer<ffi.Char>,
                ffi.Int,
                ffi.Int,
              )
            >
          >('create_png_context')
          .asFunction<
            ffi.Pointer<ImageContext> Function(ffi.Pointer<ffi.Char>, int, int)
          >();

  late final _writePngData =
      _lookup<
            ffi.NativeFunction<
              ffi.Int Function(
                ffi.Pointer<ImageContext>,
                ffi.Pointer<ffi.Uint8>,
                ffi.Int,
                ffi.Int,
              )
            >
          >('write_png_data')
          .asFunction<
            int Function(
              ffi.Pointer<ImageContext>,
              ffi.Pointer<ffi.Uint8>,
              int,
              int,
            )
          >();

  late final _savePngImage =
      _lookup<ffi.NativeFunction<ffi.Int Function(ffi.Pointer<ImageContext>)>>(
        'save_png_image',
      ).asFunction<int Function(ffi.Pointer<ImageContext>)>();

  ffi.Pointer<ImageContext> createPngContext(
    ffi.Pointer<ffi.Char> filePath,
    int width,
    int height,
  ) {
    return _createPngContext(filePath, width, height);
  }

  int writePngData(
    ffi.Pointer<ImageContext> context,
    ffi.Pointer<ffi.Uint8> rgbaData,
    int srcStride,
    int rowCount,
  ) {
    return _writePngData(context, rgbaData, srcStride, rowCount);
  }

  int savePngImage(ffi.Pointer<ImageContext> context) {
    return _savePngImage(context);
  }
}

final class ImageContext extends ffi.Struct {
  @ffi.Int()
  external int width;

  @ffi.Int()
  external int height;

  @ffi.Int()
  external int currentRow;

  external ffi.Pointer<ffi.Void> filePtr;
  external ffi.Pointer<ffi.Void> imagePtr;
  external ffi.Pointer<ffi.Void> infoPtr;
}
