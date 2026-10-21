import 'ffi_exception.dart';

/// A WebAssembly scalar value crossing the platform boundary.
///
/// The scaffold ships the four numeric types; the migration extends the
/// family (reference types, vectors) without breaking the contract.
sealed class FfiValue {
  const FfiValue();

  /// Encodes this value into the primitive representation transported over
  /// the platform channel. i64 travels as a decimal string — channel
  /// payloads cannot carry a BigInt losslessly.
  Object encode() => switch (this) {
        FfiI32(:final value) => value,
        FfiI64(:final value) => value.toString(),
        FfiF32(:final value) => value,
        FfiF64(:final value) => value,
      };

  /// Decodes a channel payload into a [FfiValue]: ints decode as
  /// i32, doubles as f64, and decimal strings as i64.
  static FfiValue decode(Object? raw) {
    if (raw is int) return FfiI32(raw);
    if (raw is double) return FfiF64(raw);
    if (raw is String) return FfiI64(BigInt.parse(raw));
    throw FfiException(
      'malformed_value',
      'Cannot decode "$raw" into a FfiValue.',
      recoverable: false,
    );
  }
}

/// A 32-bit integer value.
class FfiI32 extends FfiValue {
  final int value;

  const FfiI32(this.value);
}

/// A 64-bit integer value (transported as a decimal string).
class FfiI64 extends FfiValue {
  final BigInt value;

  const FfiI64(this.value);
}

/// A 32-bit float value.
class FfiF32 extends FfiValue {
  final double value;

  const FfiF32(this.value);
}

/// A 64-bit float value.
class FfiF64 extends FfiValue {
  final double value;

  const FfiF64(this.value);
}
