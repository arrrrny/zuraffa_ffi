/// The typed native failure on macOS.
class MacosFfiException implements Exception {
  final String code;
  final String message;
  final bool recoverable;

  const MacosFfiException(
    this.code,
    this.message, {
    required this.recoverable,
  });

  @override
  String toString() =>
      'MacosFfiException($code, recoverable: $recoverable): $message';
}
