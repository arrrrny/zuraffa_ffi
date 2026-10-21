// HAND-IMPLEMENTED SUBJECT — behavior A1 (zfa:tdd: A1:hand).
//
// behavior_id: A1
// source_criterion: AC-1
// description: the shared FFI contract and all three platform adapters — the Android, iOS, and macOS registration helpers — are reachable from that one entry point.
//
// The scenario imports the family through its public entry point
// (`package:zuraffa_ffi/zuraffa_ffi.dart`) and uses every part of it, so a
// symbol that stops being exported breaks the scenario at compile time.
//
// The scenario observes the entry point through an [UmbrellaProbe] and turns
// the observation into violations. Both steps are injectable, so a test can
// drive the scenario with a broken entry point and the failure paths are
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

/// The parts the scenario proves reachable through the app-facing entry
/// point.
const List<String> umbrellaParts = <String>[
  'FfiPort',
  'FfiModule',
  'FfiValue',
  'FfiException',
  'FfiService',
  'registerFfiDependencies',
  'registerAndroidFfiDependencies',
  'registerIosFfiDependencies',
  'registerMacosFfiDependencies',
];

/// Exercises one part of the entry point and reports the failure, if any.
typedef PartRunner = String? Function();

/// What the scenario observed about the app-facing entry point.
class UmbrellaProbe {
  const UmbrellaProbe({this.errors = const <String, String>{}});

  /// The failure raised per part, keyed by the part's name. A part that is
  /// missing from the map behaved as expected.
  final Map<String, String> errors;
}

/// Observes the app-facing entry point.
///
/// Every part is injectable so a test can make the entry point fail and the
/// scenario can report that failure.
UmbrellaProbe probeUmbrella({Map<String, PartRunner>? runners}) {
  final parts = runners ?? defaultUmbrellaRunners();
  final errors = <String, String>{};
  for (final part in umbrellaParts) {
    final runner = parts[part];
    if (runner == null) {
      errors[part] = 'the entry point does not expose it.';
      continue;
    }
    try {
      final failure = runner();
      if (failure != null) errors[part] = failure;
    } on Object catch (error) {
      errors[part] = '$error';
    }
  }
  return UmbrellaProbe(errors: errors);
}

/// The runners that use the real symbols of the app-facing entry point.
Map<String, PartRunner> defaultUmbrellaRunners() {
  return <String, PartRunner>{
    'FfiPort': () {
      final Object port = EchoFfiPort();
      return port is FfiPort ? null : 'the port does not implement FfiPort.';
    },
    'FfiModule': () {
      final module = FfiModule(id: 'probe', byteLength: 7);
      return module.id == 'probe' ? null : 'the module does not carry its id.';
    },
    'FfiValue': () {
      final value = FfiValue.decode(1);
      return value is FfiI32 ? null : 'the value does not decode as FfiI32.';
    },
    'FfiException': () {
      final failure = FfiException('probe', 'probe', recoverable: false);
      return failure.code == 'probe' ? null : 'the failure does not carry its code.';
    },
    'FfiService': () {
      final service = FfiService(port: EchoFfiPort());
      return service.compiledModules.isEmpty
          ? null
          : 'a fresh service already holds compiled modules.';
    },
    'registerFfiDependencies': () {
      final getIt = GetIt.asNewInstance();
      registerFfiDependencies(getIt, port: EchoFfiPort());
      return getIt.isRegistered<FfiService>()
          ? null
          : 'the service was not registered.';
    },
    'registerAndroidFfiDependencies': () {
      final getIt = GetIt.asNewInstance();
      registerAndroidFfiDependencies(getIt);
      return getIt.isRegistered<FfiPort>() ? null : 'the port was not registered.';
    },
    'registerIosFfiDependencies': () {
      final getIt = GetIt.asNewInstance();
      registerIosFfiDependencies(getIt);
      return getIt.isRegistered<FfiPort>() ? null : 'the port was not registered.';
    },
    'registerMacosFfiDependencies': () {
      final getIt = GetIt.asNewInstance();
      registerMacosFfiDependencies(getIt);
      return getIt.isRegistered<FfiPort>() ? null : 'the port was not registered.';
    },
  };
}

/// Scenario runner for behavior A1.
///
/// Returns the violations found; an empty list means the scenario holds.
///
/// When [probe] is given it replaces the observation the scenario makes
/// about the app-facing entry point.
List<String> subject_a1({UmbrellaProbe? probe}) {
  final observed = probe ?? probeUmbrella();

  return <String>[
    for (final part in umbrellaParts)
      if (observed.errors.containsKey(part))
        '$part is not reachable from the app-facing entry point: '
            '${observed.errors[part]}',
  ];
}
