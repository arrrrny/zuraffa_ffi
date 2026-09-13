import 'dart:typed_data';

import 'package:zuraffa/zuraffa.dart';

import 'ffi_exception.dart';
import 'ffi_module.dart';
import 'ffi_port.dart';
import 'ffi_value.dart';

/// Facade over the [FfiPort]: owns the compiled-module registry
/// and turns lifecycle mistakes (double compile, call-before-compile)
/// into typed failures before they reach the platform.
class FfiService {
  final FfiPort port;
  final Map<String, FfiModule> _modules = {};

  FfiService({required this.port});

  /// The compiled modules currently held by this service.
  Set<String> get compiledModules => Set.unmodifiable(_modules.keys);

  Future<bool> supported() => port.isSupported();

  Future<FfiModule> compile({
    required String id,
    required Uint8List bytes,
  }) async {
    if (_modules.containsKey(id)) {
      throw FfiException(
        'already_compiled',
        'Module "$id" is already compiled — unload it first.',
        recoverable: false,
      );
    }
    final module = await port.compile(id: id, bytes: bytes);
    _modules[id] = module;
    return module;
  }

  Future<List<FfiValue>> call({
    required String id,
    required String export,
    List<FfiValue> args = const [],
  }) async {
    _requireCompiled(id);
    return port.invoke(id: id, export: export, args: args);
  }

  Future<void> unload({required String id}) async {
    _requireCompiled(id);
    await port.unload(id: id);
    _modules.remove(id);
  }

  void _requireCompiled(String id) {
    if (!_modules.containsKey(id)) {
      throw FfiException(
        'not_compiled',
        'Module "$id" is not compiled — call compile() first.',
        recoverable: false,
      );
    }
  }
}

/// A port placeholder registered when no platform adapter was wired:
/// every operation surfaces the typed `port_not_wired` failure instead of
/// a null dereference at resolve time.
class _UnwiredFfiPort implements FfiPort {
  const _UnwiredFfiPort();

  Never _unwired() => throw const FfiException(
        'port_not_wired',
        'No FfiPort was registered — wire the platform adapter '
        'for the running platform before resolving FfiService.',
        recoverable: false,
      );

  @override
  Future<bool> isSupported() async => _unwired();

  @override
  Future<FfiModule> compile({
    required String id,
    required Uint8List bytes,
  }) =>
      _unwired();

  @override
  Future<List<FfiValue>> invoke({
    required String id,
    required String export,
    List<FfiValue> args = const [],
  }) =>
      _unwired();

  @override
  Future<void> unload({required String id}) => _unwired();
}

/// Registers the zuraffa_ffi stack onto [getIt]: the [FfiPort] is
/// normally supplied by the platform adapter package for the running
/// platform (e.g. `registerAndroidFfiDependencies`). Without a
/// port the service resolves over the unwired placeholder and surfaces
/// typed `port_not_wired` failures.
void registerFfiDependencies(
  GetIt getIt, {
  FfiPort? port,
}) {
  getIt.registerLazySingleton<FfiService>(
    () => FfiService(port: port ?? const _UnwiredFfiPort()),
  );
}
