/// zuraffa_ffi — Ffi support for the Zuraffa ecosystem.
///
/// A pure-Dart port (`FfiPort`), a facade (`FfiService`),
/// typed failures, and DI registration. Platform adapters implement the
/// port over an injected platform channel — the shared envelope machinery
/// lives in `zuraffa_ffi_platform`.
///
/// The port contract and the three platform adapters are reachable from
/// this one entry point, so depending on `zuraffa_ffi` alone is enough:
/// the adapters are re-exported here instead of being separate
/// dependencies the consumer has to add by hand.
library;

export 'src/ffi_service.dart';
export 'package:zuraffa_ffi_android/zuraffa_ffi_android.dart';
export 'package:zuraffa_ffi_ios/zuraffa_ffi_ios.dart';
export 'package:zuraffa_ffi_macos/zuraffa_ffi_macos.dart';
export 'package:zuraffa_ffi_platform/zuraffa_ffi_platform.dart'
    show
        FfiException,
        FfiF32,
        FfiF64,
        FfiI32,
        FfiI64,
        FfiModule,
        FfiPort,
        FfiValue;
