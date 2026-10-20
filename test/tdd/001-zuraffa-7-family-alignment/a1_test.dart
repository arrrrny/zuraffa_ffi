// GENERATED TEST — `zfa tdd gen A1` (spec 044-test-tdd-generation).
//
// behavior_id: A1
// source_criterion: AC-1
// kind: acceptance
// description: every member declares the same `zuraffa` constraint, and that constraint admits zuraffa 7.2.0.
//
// The red surface of the scenario: the paired subject at
// `package:zuraffa_ffi_workspace/tdd/001-zuraffa-7-family-alignment/a1_subject.dart`
// reports the violations it finds in the family's shipped pubspecs.
//
// zfa:tdd: A1:hand — hand step completed before first red certification (issue #1411)
library;

import 'package:test/test.dart';
import 'package:zuraffa_ffi_workspace/tdd/001-zuraffa-7-family-alignment/a1_subject.dart' as subject;

void main() {
  group('A1 (AC-1)', () {
    test('A1 — every member declares the same `zuraffa` constraint, and that constraint admits zuraffa 7.2.0.', () {
      final Object? result = (() {
        try {
          subject.subject_a1();
          return null;
        } on UnimplementedError catch (error) {
          return error;
        }
      })();
      expect(result, isNot(isA<UnimplementedError>()));
      // The observable outcome of the scenario: the family's manifest carries
      // no violation — every member agrees on the constraint, and the
      // constraint admits zuraffa 7.2.0.
      expect(subject.subject_a1(), isEmpty);
    });
  });
}
