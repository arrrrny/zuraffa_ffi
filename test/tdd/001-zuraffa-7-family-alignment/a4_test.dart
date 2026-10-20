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

import 'dart:io';

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

    test('A4 — a family that declares the envelope twice, or an adapter that does not use it, is reported', () {
      final root = Directory.systemTemp.createTempSync('zuraffa_ffi_envelope');
      addTearDown(() => root.deleteSync(recursive: true));

      // The envelope is declared in the platform package AND in an adapter,
      // and the macOS adapter never routes through it.
      void writeDart(String package, String file, String body) {
        final dir = Directory('${root.path}/packages/$package/lib')
          ..createSync(recursive: true);
        File('${dir.path}/$file').writeAsStringSync(body);
      }

      writeDart(
        'zuraffa_ffi_platform',
        'envelope.dart',
        'class PlatformFfiEnvelope { const PlatformFfiEnvelope(); }\n',
      );
      writeDart(
        'zuraffa_ffi_android',
        'envelope.dart',
        'class PlatformFfiEnvelope { const PlatformFfiEnvelope(); }\n',
      );
      writeDart(
        'zuraffa_ffi_ios',
        'adapter.dart',
        'final envelope = PlatformFfiEnvelope();\n',
      );
      writeDart('zuraffa_ffi_macos', 'adapter.dart', 'void go() {}\n');

      final violations = subject.subject_a4(root: root);
      final declaredTwice = violations.firstWhere(
        (v) => v.startsWith('The envelope is declared 2 time(s)'),
      );
      expect(declaredTwice, contains('zuraffa_ffi_platform/envelope.dart'));
      expect(declaredTwice, contains('zuraffa_ffi_android/envelope.dart'));
      expect(
        declaredTwice,
        endsWith(
          '— it must be declared exactly once, in zuraffa_ffi_platform.',
        ),
      );
      expect(
        violations,
        contains(
          'zuraffa_ffi_macos does not route its channel through the shared '
          'envelope.',
        ),
      );
    });

    test('A4 — an envelope declared outside the platform package is reported', () {
      final root = Directory.systemTemp.createTempSync('zuraffa_ffi_envelope');
      addTearDown(() => root.deleteSync(recursive: true));

      final dir = Directory('${root.path}/packages/zuraffa_ffi_ios/lib')
        ..createSync(recursive: true);
      File('${dir.path}/envelope.dart').writeAsStringSync(
        'class PlatformFfiEnvelope { const PlatformFfiEnvelope(); }\n',
      );

      final violations = subject.subject_a4(root: root);
      expect(
        violations,
        contains(
          'The envelope is declared in zuraffa_ffi_ios/envelope.dart — it '
          'belongs to zuraffa_ffi_platform.',
        ),
      );
    });
  });
}
