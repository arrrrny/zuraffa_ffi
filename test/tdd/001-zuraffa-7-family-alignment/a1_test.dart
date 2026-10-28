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
import 'package:zuraffa_ffi_workspace/tdd/001-zuraffa-7-family-alignment/family_manifest.dart';

void main() {
  group('A1 (AC-1)', () {
    test('A1 — every member declares the same `zuraffa` constraint, and that constraint admits the family version.', () {
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
      // constraint admits the family's own mono version.
      expect(subject.subject_a1(), isEmpty);
    });

    test('A1 — a family that drifts to two different `zuraffa` constraints is reported', () {
      final violations = subject.subject_a1(constraints: {
        'zuraffa_ffi': '^7.2.0',
        'zuraffa_ffi_platform': '^6.2.2',
        'zuraffa_ffi_android': '^7.2.0',
        'zuraffa_ffi_ios': '^7.2.0',
        'zuraffa_ffi_macos': '^7.2.0',
      });
      expect(violations, hasLength(1));
      expect(violations.single, contains('different `zuraffa` constraints'));
    });

    test('A1 — a family constraint that does not admit the family version is reported', () {
      final violations = subject.subject_a1(constraints: {
        'zuraffa_ffi': '^6.2.2',
        'zuraffa_ffi_platform': '^6.2.2',
        'zuraffa_ffi_android': '^6.2.2',
        'zuraffa_ffi_ios': '^6.2.2',
        'zuraffa_ffi_macos': '^6.2.2',
      });
      expect(violations, hasLength(1));
      expect(violations.single, contains('does not admit zuraffa '));
    });

    test('A1 — a member that declares no `zuraffa` dependency at all is reported', () {
      final violations = subject.subject_a1(constraints: {
        'zuraffa_ffi': '^7.2.0',
        'zuraffa_ffi_platform': '^7.2.0',
        'zuraffa_ffi_android': '^7.2.0',
        'zuraffa_ffi_ios': '^7.2.0',
      });
      expect(violations, hasLength(1));
      expect(violations.single, contains('zuraffa_ffi_macos'));
      expect(violations.single, contains('no `zuraffa` dependency'));
    });
  });
}
