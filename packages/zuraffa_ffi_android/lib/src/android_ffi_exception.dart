/// The typed native failure on Android.
class AndroidFfiException implements Exception {
  final String code;
  final String message;
  final bool recoverable;

  const AndroidFfiException(
    this.code,
    this.message, {
    required this.recoverable,
  });

  @override
  String toString() =>
      'AndroidFfiException($code, recoverable: $recoverable): $message';
}
