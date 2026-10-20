// GENERATED TEST — `zfa tdd gen A2` (spec 044-test-tdd-generation).
//
// behavior_id: A2
// source_criterion: AC-2
// kind: acceptance
// description: all five family packages resolve through one pub workspace, with one shared lockfile and one shared package configuration.
//
// The red surface of the scenario: the paired subject at
// `package:zuraffa_ffi_workspace/tdd/001-zuraffa-7-family-alignment/a2_subject.dart`
// reports the workspace violations it finds.
//
// zfa:tdd: A2:hand — hand step completed before first red certification (issue #1411)
library;

import 'package:test/test.dart';
import 'package:zuraffa_ffi_workspace/tdd/001-zuraffa-7-family-alignment/a2_subject.dart' as subject;

void main() {
  group('A2 (AC-2)', () {
    test('A2 — all five family packages resolve through one pub workspace, with one shared lockfile and one shared package configuration.', () {
      final Object? result = (() {
        try {
          subject.subject_a2();
          return null;
        } on UnimplementedError catch (error) {
          return error;
        }
      })();
      expect(result, isNot(isA<UnimplementedError>()));
      // The observable outcome of the scenario: the family resolves through
      // one workspace — no stray lockfile, no stray package configuration.
      expect(subject.subject_a2(), isEmpty);
    });
  });
}
