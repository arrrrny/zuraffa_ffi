import 'package:zuraffa_ffi_platform/zuraffa_ffi_platform.dart';

import 'android_ffi_exception.dart';

/// The Android channel: the shared
/// [PlatformFfiEnvelope] machinery with the Android
/// taxonomy as a pure data set.
class AndroidFfiChannel {
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

  const AndroidFfiChannel({
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
        onTyped: AndroidFfiException.new,
        mapNativeError: _mapNativeError,
        isTypedError: (error) => error is AndroidFfiException,
      ).call(method, args);

  static Exception _mapNativeError(String code, String message) =>
      AndroidFfiException(
        code,
        message,
        recoverable: recoverableCodes.contains(code),
      );
}
