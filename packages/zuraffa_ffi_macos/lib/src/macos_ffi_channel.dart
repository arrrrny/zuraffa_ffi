import 'package:zuraffa_ffi_platform/zuraffa_ffi_platform.dart';

import 'macos_ffi_exception.dart';

/// The macOS channel: the shared
/// [PlatformFfiEnvelope] machinery with the macOS
/// taxonomy as a pure data set.
class MacosFfiChannel {
  /// Native codes that map recoverable; everything else (including
  /// unknown codes) is non-recoverable, preserved verbatim.
  static const Set<String> recoverableCodes = {
    'user_cancelled',
    'api_unavailable',
    'not_supported',
    'timeout',
  };

  final ChannelInvoke invoke;
  final Duration timeout;

  const MacosFfiChannel({
    required this.invoke,
    this.timeout = const Duration(seconds: 30),
  });

  Future<Map<String, Object?>?> call(
    String method,
    Map<String, Object?> args,
  ) =>
      PlatformFfiEnvelope(
        invoke: invoke,
        timeout: timeout,
        onTyped: MacosFfiException.new,
        mapNativeError: _mapNativeError,
        isTypedError: (error) => error is MacosFfiException,
      ).call(method, args);

  static Exception _mapNativeError(String code, String message) =>
      MacosFfiException(
        code,
        message,
        recoverable: recoverableCodes.contains(code),
      );
}
