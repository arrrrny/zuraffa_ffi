# Changelog

## 0.1.0

- Initial federated scaffold for `zuraffa_ffi` (EPIC #214 migration): the
  app-facing package, the shared `zuraffa_ffi_platform` envelope core, and the
  Android, iOS, macOS adapters.
- Built on zuraffa 6.2.2: typed `FfiPort` + `FfiService` facade, pure-Dart
  value codec (`FfiI32`/`FfiI64`/`FfiF32`/`FfiF64`), and an injected
  `ChannelInvoke` transport — no native code in the packages.
