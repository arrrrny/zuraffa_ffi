// HAND-IMPLEMENTED SUBJECT — behavior A3 (zfa:tdd: A3:hand).
//
// behavior_id: A3
// source_criterion: AC-3
// description: the shared FFI contract (port, service, module, value, exception) and the DI registration are reachable from the package's public entry point.
//
// The scenario imports the family through its public entry point and uses
// every part of the contract, so a symbol that stops being exported fails
// the scenario at compile time or at runtime.
//
// ignore_for_file: non_constant_identifier_names
library;

import 'dart:typed_data';

import 'package:zuraffa/zuraffa.dart';
import 'package:zuraffa_ffi/zuraffa_ffi.dart';

/// A minimal port: the scenario only proves the contract is reachable, not
/// that a module compiles.
class _EchoPort implements FfiPort {
  @override
  Future<bool> isSupported() async => true;

  @override
  Future<FfiModule> compile({
    required String id,
    required Uint8List bytes,
  }) async =>
      FfiModule(id: id, byteLength: bytes.length);

  @override
  Future<List<FfiValue>> invoke({
    required String id,
    required String export,
    List<FfiValue> args = const [],
  }) async =>
      const <FfiValue>[];

  @override
  Future<void> unload({required String id}) async {}
}

/// Scenario runner for behavior A3.
///
/// Returns the violations found; an empty list means the scenario holds.
List<String> subject_a3() {
  final violations = <String>[];

  try {
    final value = FfiValue.decode(1);
    if (value is! FfiI32 || value.value != 1) {
      violations.add('FfiValue.decode does not decode an int as FfiI32.');
    }
  } on Object catch (error) {
    violations.add('FfiValue is not reachable: $error');
  }

  try {
    final module = FfiModule(id: 'probe', byteLength: 7);
    if (module.id != 'probe' || module.byteLength != 7) {
      violations.add('FfiModule does not carry its id and byte length.');
    }
  } on Object catch (error) {
    violations.add('FfiModule is not reachable: $error');
  }

  try {
    final service = FfiService(port: _EchoPort());
    if (!service.compiledModules.isEmpty) {
      violations.add('A fresh FfiService already holds compiled modules.');
    }
  } on Object catch (error) {
    violations.add('FfiService is not reachable: $error');
  }

  try {
    const FfiException('probe', 'probe', recoverable: false);
  } on Object catch (error) {
    violations.add('FfiException is not reachable: $error');
  }

  try {
    final getIt = GetIt.instance;
    if (getIt.isRegistered<FfiService>()) {
      getIt.unregister<FfiService>();
    }
    registerFfiDependencies(getIt, port: _EchoPort());
    if (!getIt.isRegistered<FfiService>()) {
      violations.add('registerFfiDependencies did not register the service.');
    }
  } on Object catch (error) {
    violations.add('The DI registration is not reachable: $error');
  }

  return violations;
}
