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

import 'dart:io';

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

    test('A2 — a workspace that is split, unlisted, or missing its lockfile is reported', () {
      final root = Directory.systemTemp.createTempSync('zuraffa_ffi_workspace');
      addTearDown(() => root.deleteSync(recursive: true));

      // A root pubspec without a `workspace:` block that lists only some of
      // the members, no shared lockfile, and one member that carries its own
      // lockfile and package configuration.
      File('${root.path}/pubspec.yaml').writeAsStringSync('''
name: broken_workspace
publish_to: none
''');
      final stray = Directory('${root.path}/packages/zuraffa_ffi_macos')
        ..createSync(recursive: true);
      File('${stray.path}/pubspec.lock').writeAsStringSync('# stray\n');
      Directory('${stray.path}/.dart_tool').createSync(recursive: true);
      File('${stray.path}/.dart_tool/package_config.json')
          .writeAsStringSync('{}');

      final violations = subject.subject_a2(root: root);
      expect(
        violations,
        contains('The repository root declares no `workspace:` block.'),
      );
      expect(
        violations,
        contains('The workspace does not list packages/zuraffa_ffi.'),
      );
      expect(violations, contains('The workspace has no shared lockfile.'));
      expect(
        violations,
        contains(
          'zuraffa_ffi_macos carries its own lockfile — the workspace must '
          'share one.',
        ),
      );
      expect(
        violations,
        contains(
          'zuraffa_ffi_macos carries its own package configuration — the '
          'workspace must share one.',
        ),
      );
    });
  });
}
