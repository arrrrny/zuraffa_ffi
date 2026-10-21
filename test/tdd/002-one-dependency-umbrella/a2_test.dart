// GENERATED TEST — `zfa tdd gen A2` (spec 044-test-tdd-generation).
//
// behavior_id: A2
// source_criterion: AC-2
// kind: acceptance
// description: the shared platform package and the three adapters come along with it, and no family member depends back on the app-facing package, so the graph stays acyclic.
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_ffi_workspace/tdd/002-one-dependency-umbrella/a2_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
//
// zfa:tdd: A2:hand — hand step completed before first red certification (issue #1411)
library;

import 'package:test/test.dart';
import 'package:zuraffa_ffi_workspace/tdd/002-one-dependency-umbrella/a2_subject.dart' as subject;

Map<String, Set<String>> _healthyGraph() => <String, Set<String>>{
      'zuraffa_ffi': <String>{
        'zuraffa_ffi_platform',
        'zuraffa_ffi_android',
        'zuraffa_ffi_ios',
        'zuraffa_ffi_macos',
      },
      'zuraffa_ffi_platform': <String>{},
      'zuraffa_ffi_android': <String>{'zuraffa_ffi_platform'},
      'zuraffa_ffi_ios': <String>{'zuraffa_ffi_platform'},
      'zuraffa_ffi_macos': <String>{'zuraffa_ffi_platform'},
    };

void main() {
  group('A2 (AC-2)', () {
    test('A2 — the shared platform package and the three adapters come along with it, and no family member depends back on the app-facing package, so the graph stays acyclic.', () {
      final Object? result = (() {
        try {
          subject.subject_a2();
          return null;
        } on UnimplementedError catch (error) {
          return error;
        }
      })();
      expect(result, isNot(isA<UnimplementedError>()));
      // The observable outcome of the scenario: the app-facing package pulls
      // the whole family in, and nothing points back at it.
      expect(subject.subject_a2(), isEmpty);
    });

    test('A2 — a member missing from the app-facing package is reported', () {
      final graph = _healthyGraph();
      graph['zuraffa_ffi'] = <String>{
        'zuraffa_ffi_platform',
        'zuraffa_ffi_android',
      };
      final violations = subject.subject_a2(graph: graph);
      expect(violations, <String>[
        'The app-facing package does not depend on zuraffa_ffi_ios — '
            'a consumer of `zuraffa_ffi` alone would not get it.',
        'The app-facing package does not depend on zuraffa_ffi_macos — '
            'a consumer of `zuraffa_ffi` alone would not get it.',
      ]);
    });

    test('A2 — a member that depends back on the app-facing package is reported', () {
      final graph = _healthyGraph();
      graph['zuraffa_ffi_platform'] = <String>{'zuraffa_ffi'};
      final violations = subject.subject_a2(graph: graph);
      expect(violations, <String>[
        'zuraffa_ffi_platform depends back on the app-facing package — '
            'the graph would be cyclic.',
        'The family dependency graph is cyclic: '
            'zuraffa_ffi -> zuraffa_ffi_platform -> zuraffa_ffi.',
      ]);
    });

    test('A2 — a cyclic graph is reported', () {
      final graph = _healthyGraph();
      graph['zuraffa_ffi_platform'] = <String>{'zuraffa_ffi_android'};
      graph['zuraffa_ffi_android'] = <String>{'zuraffa_ffi_platform'};
      final violations = subject.subject_a2(graph: graph);
      expect(violations, <String>[
        'The family dependency graph is cyclic: '
            'zuraffa_ffi_platform -> zuraffa_ffi_android -> '
            'zuraffa_ffi_platform.',
      ]);
    });
  });
}
