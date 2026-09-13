/// The typed native failure on iOS.
class IosFfiException implements Exception {
  final String code;
  final String message;
  final bool recoverable;

  const IosFfiException(
    this.code,
    this.message, {
    required this.recoverable,
  });

  @override
  String toString() =>
      'IosFfiException($code, recoverable: $recoverable): $message';
}
