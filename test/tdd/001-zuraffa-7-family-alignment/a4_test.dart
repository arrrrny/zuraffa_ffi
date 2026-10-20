// GENERATED TEST — `zfa tdd gen A4` (spec 044-test-tdd-generation).
//
// behavior_id: A4
// source_criterion: AC-4
// kind: acceptance
// description: the conversion goes through the shared `zuraffa_ffi_platform` envelope instead of an adapter-local envelope implementation.
//
// The red surface of the scenario: the paired subject at
// `package:zuraffa_ffi_workspace/tdd/001-zuraffa-7-family-alignment/a4_subject.dart`
// reports the envelope violations it finds.
//
// zfa:tdd: A4:hand — hand step completed before first red certification (issue #1411)
library;

import 'package:test/test.dart';
import 'package:zuraffa_ffi_workspace/tdd/001-zuraffa-7-family-alignment/a4_subject.dart' as subject;

void main() {
  group('A4 (AC-4)', () {
    test('A4 — the conversion goes through the shared `zuraffa_ffi_platform` envelope, and the adapter declares no envelope of its own.', () {
      final Object? result = (() {
        try {
          subject.subject_a4();
          return null;
        } on UnimplementedError catch (error) {
          return error;
        }
      })();
      expect(result, isNot(isA<UnimplementedError>()));
      // The observable outcome of the scenario: the envelope is declared
      // exactly once — in zuraffa_ffi_platform — and every adapter uses it.
      expect(subject.subject_a4(), isEmpty);
    });
  });
}
