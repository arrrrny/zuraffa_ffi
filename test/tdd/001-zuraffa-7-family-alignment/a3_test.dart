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
  });
}
