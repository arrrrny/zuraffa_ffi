import 'dart:typed_data';

import 'package:zuraffa_ffi/zuraffa_ffi.dart';

import 'macos_ffi_channel.dart';
import 'macos_ffi_exception.dart';

/// macOS [FfiPort] over the typed
/// [MacosFfiChannel].
class MacosFfiPort implements FfiPort {
  final MacosFfiChannel channel;

  const MacosFfiPort({required this.channel});

  @override
  Future<bool> isSupported() async {
    final result = await channel.call('isSupported', const {});
    return result?['supported'] == true;
  }

  @override
  Future<FfiModule> compile({
    required String id,
    required Uint8List bytes,
  }) async {
    final result = await channel.call('compile', {
      'id': id,
      'bytes': bytes,
    });
    return FfiModule(
      id: id,
      byteLength:
          (result?['byteLength'] as num?)?.toInt() ?? bytes.lengthInBytes,
    );
  }

  @override
  Future<List<FfiValue>> invoke({
    required String id,
    required String export,
    List<FfiValue> args = const [],
  }) async {
    final result = await channel.call('invoke', {
      'id': id,
      'export': export,
      'args': [for (final arg in args) arg.encode()],
    });
    final values = result?['values'];
    if (values is! List) {
      throw const MacosFfiException(
        'malformed_response',
        'The invoke result carried no value list.',
        recoverable: false,
      );
    }
    return [for (final raw in values) FfiValue.decode(raw)];
  }

  @override
  Future<void> unload({required String id}) async {
    await channel.call('unload', {'id': id});
  }
}
