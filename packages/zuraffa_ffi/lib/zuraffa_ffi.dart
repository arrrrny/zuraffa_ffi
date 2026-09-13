/// zuraffa_ffi — Ffi support for the Zuraffa ecosystem.
///
/// A pure-Dart port (`FfiPort`), a facade (`FfiService`),
/// typed failures, and DI registration. Platform adapters implement the
/// port over an injected platform channel — the shared envelope machinery
/// lives in `zuraffa_ffi_platform`.
library;

export 'src/ffi_exception.dart';
export 'src/ffi_module.dart';
export 'src/ffi_port.dart';
export 'src/ffi_service.dart';
export 'src/ffi_value.dart';
