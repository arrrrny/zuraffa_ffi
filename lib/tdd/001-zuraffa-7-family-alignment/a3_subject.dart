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
// The scenario observes the contract through a [FfiContractProbe] and turns
// the observation into violations. Both steps are injectable, so a test can
// drive the scenario with a broken contract and the failure paths are
// covered too — not only the happy path.
//
// ignore_for_file: non_constant_identifier_names
library;

import 'dart:typed_data';

import 'package:zuraffa/zuraffa.dart';
import 'package:zuraffa_ffi/zuraffa_ffi.dart';

/// A minimal port: the scenario only proves the contract is reachable, not
/// that a module compiles.
class EchoFfiPort implements FfiPort {
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

/// What the scenario observed about the family's public FFI contract.
///
/// Every field is nullable: `null` means "not observed", which the scenario
/// reports as a violation just like a wrong observation.
class FfiContractProbe {
  const FfiContractProbe({
    this.valueType,
    this.value,
    this.valueError,
    this.moduleId,
    this.moduleByteLength,
    this.moduleError,
    this.serviceModuleCount,
    this.serviceError,
    this.exceptionError,
    this.serviceRegistered,
    this.registrationError,
  });

  /// The runtime type [FfiValue.decode] produced for an `int` payload.
  final String? valueType;

  /// The decoded integer, when the decoded value is an [FfiI32].
  final int? value;

  /// The failure raised while decoding, when decoding failed.
  final String? valueError;

  /// The id the module carries.
  final String? moduleId;

  /// The byte length the module carries.
  final int? moduleByteLength;

  /// The failure raised while building a module, when building failed.
  final String? moduleError;

  /// How many compiled modules a fresh service holds.
  final int? serviceModuleCount;

  /// The failure raised while building a service, when building failed.
  final String? serviceError;

  /// The failure raised while constructing the typed exception.
  final String? exceptionError;

  /// Whether the DI registration left the service registered.
  final bool? serviceRegistered;

  /// The failure raised while registering, when registering failed.
  final String? registrationError;
}

/// Decodes a channel payload into a value.
typedef ValueDecoder = FfiValue Function(Object? raw);

/// Builds a compiled module.
typedef ModuleBuilder = FfiModule Function({
  required String id,
  required int byteLength,
});

/// Builds a service over a port.
typedef ServiceBuilder = FfiService Function({required FfiPort port});

/// Constructs the typed failure.
typedef ExceptionBuilder = FfiException Function(
  String code,
  String message, {
  required bool recoverable,
});

/// Registers the family's dependencies in the service locator.
typedef DependencyRegistrar = void Function(
  GetIt getIt, {
  FfiPort? port,
});

/// Observes the family's public FFI contract.
///
/// Every operation is injectable so a test can make the contract fail and
/// the scenario can report that failure.
FfiContractProbe probeFfiContract({
  ValueDecoder? decodeValue,
  ModuleBuilder? buildModule,
  ServiceBuilder? buildService,
  ExceptionBuilder? buildException,
  DependencyRegistrar? registerDependencies,
}) {
  String? valueType;
  int? value;
  String? valueError;
  String? moduleId;
  int? moduleByteLength;
  String? moduleError;
  int? serviceModuleCount;
  String? serviceError;
  String? exceptionError;
  bool? serviceRegistered;
  String? registrationError;

  try {
    final decoded = (decodeValue ?? FfiValue.decode)(1);
    valueType = decoded.runtimeType.toString();
    if (decoded is FfiI32) value = decoded.value;
  } on Object catch (error) {
    valueError = '$error';
  }

  try {
    final module =
        (buildModule ?? FfiModule.new)(id: 'probe', byteLength: 7);
    moduleId = module.id;
    moduleByteLength = module.byteLength;
  } on Object catch (error) {
    moduleError = '$error';
  }

  try {
    final service = (buildService ?? FfiService.new)(port: EchoFfiPort());
    serviceModuleCount = service.compiledModules.length;
  } on Object catch (error) {
    serviceError = '$error';
  }

  try {
    (buildException ?? FfiException.new)(
      'probe',
      'probe',
      recoverable: false,
    );
  } on Object catch (error) {
    exceptionError = '$error';
  }

  try {
    final getIt = GetIt.instance;
    if (getIt.isRegistered<FfiService>()) {
      getIt.unregister<FfiService>();
    }
    (registerDependencies ?? registerFfiDependencies)(
      getIt,
      port: EchoFfiPort(),
    );
    serviceRegistered = getIt.isRegistered<FfiService>();
  } on Object catch (error) {
    registrationError = '$error';
  }

  return FfiContractProbe(
    valueType: valueType,
    value: value,
    valueError: valueError,
    moduleId: moduleId,
    moduleByteLength: moduleByteLength,
    moduleError: moduleError,
    serviceModuleCount: serviceModuleCount,
    serviceError: serviceError,
    exceptionError: exceptionError,
    serviceRegistered: serviceRegistered,
    registrationError: registrationError,
  );
}

/// Scenario runner for behavior A3.
///
/// Returns the violations found; an empty list means the scenario holds.
///
/// When [probe] is given it replaces the observation the scenario makes
/// about the family's public contract.
List<String> subject_a3({FfiContractProbe? probe}) {
  final observed = probe ?? probeFfiContract();

  return <String>[
    if (observed.valueError != null)
      'FfiValue is not reachable: ${observed.valueError}',
    if (observed.valueType != 'FfiI32')
      'FfiValue.decode does not decode an int as FfiI32.',
    if (observed.value != 1)
      'FfiValue.decode does not decode an int as 1.',
    if (observed.moduleError != null)
      'FfiModule is not reachable: ${observed.moduleError}',
    if (observed.moduleId != 'probe')
      'FfiModule does not carry its id.',
    if (observed.moduleByteLength != 7)
      'FfiModule does not carry its byte length.',
    if (observed.serviceError != null)
      'FfiService is not reachable: ${observed.serviceError}',
    if (observed.serviceModuleCount != 0)
      'A fresh FfiService already holds compiled modules.',
    if (observed.exceptionError != null)
      'FfiException is not reachable: ${observed.exceptionError}',
    if (observed.registrationError != null)
      'The DI registration is not reachable: ${observed.registrationError}',
    if (observed.serviceRegistered != true)
      'registerFfiDependencies did not register the service.',
  ];
}
