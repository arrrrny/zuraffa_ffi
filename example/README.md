# zuraffa_ffi

FFI bindings for Zuraffa — native interop helpers used by the platform
packages. This package is normally consumed transitively by a platform
implementation; the example below shows the direct low-level usage.

## Open a native library and call into it

```dart
import 'dart:ffi';
import 'package:zuraffa_ffi/zuraffa_ffi.dart';

void main() {
  final lib = ZuraffaFfi.open('libzuraffa_native.dylib');
  final version = lib.version();
  print('native version: $version');
}
```

> The concrete native symbols depend on the platform library you ship. See the
> platform packages (`zuraffa_*_android`, `_ios`, `_macos`, …) for wired-up
> usage.