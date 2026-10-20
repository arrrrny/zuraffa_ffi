// GENERATED TEST — `zfa tdd gen A3` (spec 044-test-tdd-generation).
//
// behavior_id: A3
// source_criterion: AC-3
// kind: acceptance
// description: the shared FFI contract (port, service, module, value, exception) and the DI registration are reachable from the package's public entry point.
//
// The red surface of the scenario: the paired subject at
// `package:zuraffa_ffi_workspace/tdd/001-zuraffa-7-family-alignment/a3_subject.dart`
// reports the contract parts it could not reach.
//
// zfa:tdd: A3:hand — hand step completed before first red certification (issue #1411)
library;

import 'package:test/test.dart';
import 'package:zuraffa_ffi_workspace/tdd/001-zuraffa-7-family-alignment/a3_subject.dart' as subject;

void main() {
  group('A3 (AC-3)', () {
    test('A3 — the shared FFI contract — port, service, module, value, exception — and the DI registration are reachable from that entry point.', () {
      final Object? result = (() {
        try {
          subject.subject_a3();
          return null;
        } on UnimplementedError catch (error) {
          return error;
        }
      })();
      expect(result, isNot(isA<UnimplementedError>()));
      // The observable outcome of the scenario: every part of the shared
      // contract is reachable through the package's public entry point.
      expect(subject.subject_a3(), isEmpty);
    });

    test('A3 — a contract that does not hold is reported', () {
      final violations = subject.subject_a3(
        probe: const subject.FfiContractProbe(
          valueType: 'FfiF64',
          value: 2,
          moduleId: 'other',
          moduleByteLength: 9,
          serviceModuleCount: 3,
          serviceRegistered: false,
        ),
      );
      expect(
        violations,
        contains('FfiValue.decode does not decode an int as FfiI32.'),
      );
      expect(
        violations,
        contains('FfiValue.decode does not decode an int as 1.'),
      );
      expect(violations, contains('FfiModule does not carry its id.'));
      expect(violations, contains('FfiModule does not carry its byte length.'));
      expect(
        violations,
        contains('A fresh FfiService already holds compiled modules.'),
      );
      expect(
        violations,
        contains('registerFfiDependencies did not register the service.'),
      );
    });

    test('A3 — a contract that cannot be reached at all is reported', () {
      final violations = subject.subject_a3(
        probe: const subject.FfiContractProbe(
          valueError: 'no value',
          moduleError: 'no module',
          serviceError: 'no service',
          exceptionError: 'no exception',
          registrationError: 'no registration',
        ),
      );
      expect(violations, contains('FfiValue is not reachable: no value'));
      expect(violations, contains('FfiModule is not reachable: no module'));
      expect(violations, contains('FfiService is not reachable: no service'));
      expect(
        violations,
        contains('FfiException is not reachable: no exception'),
      );
      expect(
        violations,
        contains('The DI registration is not reachable: no registration'),
      );
    });

    test('A3 — a contract whose parts throw is reported', () {
      final violations = subject.subject_a3(
        probe: subject.probeFfiContract(
          decodeValue: (raw) => throw StateError('decode failed'),
          buildModule: ({required id, required byteLength}) =>
              throw StateError('module failed'),
          buildService: ({required port}) => throw StateError('service failed'),
          buildException: (code, message, {required recoverable}) =>
              throw StateError('exception failed'),
          registerDependencies: (getIt, {port}) =>
              throw StateError('registration failed'),
        ),
      );
      expect(violations, hasLength(11));
      expect(violations.join(' '), contains('decode failed'));
      expect(violations.join(' '), contains('module failed'));
      expect(violations.join(' '), contains('service failed'));
      expect(violations.join(' '), contains('exception failed'));
      expect(violations.join(' '), contains('registration failed'));
    });
  });
}
