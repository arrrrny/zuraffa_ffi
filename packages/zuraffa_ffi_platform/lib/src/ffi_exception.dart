/// The typed failure surfaced by the zuraffa_ffi port and service.
class FfiException implements Exception {
  final String code;
  final String message;
  final bool recoverable;

  const FfiException(
    this.code,
    this.message, {
    required this.recoverable,
  });

  @override
  String toString() =>
      'FfiException($code, recoverable: $recoverable): $message';
}
