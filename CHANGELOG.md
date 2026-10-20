# Changelog

## 0.2.0

- Widened every member to `zuraffa: ^7.2.0` (from `^6.2.2`) — the latest
  published zuraffa release. No API changes: the full suite passes unchanged
  against 7.2.0.
- The five packages now resolve through one pub workspace with one shared
  lockfile, instead of five independent resolutions.

## 0.1.0

- Initial federated scaffold for `zuraffa_ffi` (EPIC #214 migration): the
  app-facing package, the shared `zuraffa_ffi_platform` envelope core, and the
  Android, iOS, macOS adapters.
- Built on zuraffa 6.2.2: typed `FfiPort` + `FfiService` facade, pure-Dart
  value codec (`FfiI32`/`FfiI64`/`FfiF32`/`FfiF64`), and an injected
  `ChannelInvoke` transport — no native code in the packages.
