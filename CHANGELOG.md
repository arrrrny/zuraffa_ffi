# Changelog

## 0.2.1

- One dependency is enough: `zuraffa_ffi` now depends on the shared platform
  package and on the three platform adapters, and re-exports them. A consumer
  that adds `zuraffa_ffi` alone gets the port contract *and* every platform
  adapter — `registerAndroidFfiDependencies`, `registerIosFfiDependencies`,
  and `registerMacosFfiDependencies` — instead of having to add four
  dependencies by hand.
- The port contract (`FfiPort`, `FfiModule`, `FfiValue`, `FfiException`) moved
  down into `zuraffa_ffi_platform`, the layer the adapters already depend on.
  The adapters used to import it back from the app-facing package, which
  would have made the new dependency circular. The public names are
  unchanged: every one of them stays importable from
  `package:zuraffa_ffi/zuraffa_ffi.dart`.
- The publish order changed to platform → adapters → app-facing, because the
  app-facing package now depends on the rest of the family.

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
