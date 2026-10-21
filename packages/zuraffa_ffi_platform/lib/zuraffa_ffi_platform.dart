/// Shared core for the `zuraffa_ffi` platform adapters: the transport
/// envelope plus the platform-neutral FFI contract (port, module, value,
/// typed failure) the adapters implement and the app-facing facade builds on.
library;

export 'src/ffi_exception.dart';
export 'src/ffi_module.dart';
export 'src/ffi_port.dart';
export 'src/ffi_value.dart';
export 'src/platform_ffi_envelope.dart';
