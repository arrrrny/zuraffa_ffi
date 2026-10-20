// HAND-IMPLEMENTED SUBJECT — behavior A4 (zfa:tdd: A4:hand).
//
// behavior_id: A4
// source_criterion: AC-4
// description: the conversion goes through the shared `zuraffa_ffi_platform` envelope instead of an adapter-local envelope implementation.
//
// The scenario scans the family's sources: the envelope must be declared
// exactly once — in `zuraffa_ffi_platform` — and every adapter must use it.
//
// ignore_for_file: non_constant_identifier_names
library;

import 'dart:io';

import 'family_manifest.dart';

/// The adapters that must route their channel calls through the shared
/// envelope.
const List<String> adapterPackages = <String>[
  'zuraffa_ffi_android',
  'zuraffa_ffi_ios',
  'zuraffa_ffi_macos',
];

/// Scenario runner for behavior A4.
///
/// Returns the violations found; an empty list means the scenario holds.
List<String> subject_a4() {
  final violations = <String>[];
  final root = repositoryRoot();

  final envelopeDeclaration =
      RegExp(r'class\s+PlatformFfiEnvelope\b');
  final envelopeUsers = RegExp(r'PlatformFfiEnvelope\s*\(');

  final declaredIn = <String>[];
  for (final package in familyPackages) {
    final lib = Directory('${root.path}/packages/$package/lib');
    if (!lib.existsSync()) continue;
    for (final file in lib.listSync(recursive: true).whereType<File>()) {
      if (!file.path.endsWith('.dart')) continue;
      final text = file.readAsStringSync();
      if (envelopeDeclaration.hasMatch(text)) {
        declaredIn.add('$package/${file.path.split('/lib/').last}');
      }
    }
  }

  if (declaredIn.length != 1) {
    violations.add(
      'The envelope is declared ${declaredIn.length} time(s) '
      '(${declaredIn.join(', ')}) — it must be declared exactly once, in '
      'zuraffa_ffi_platform.',
    );
  } else if (!declaredIn.single.startsWith('zuraffa_ffi_platform/')) {
    violations.add(
      'The envelope is declared in ${declaredIn.single} — it belongs to '
      'zuraffa_ffi_platform.',
    );
  }

  for (final package in adapterPackages) {
    final lib = Directory('${root.path}/packages/$package/lib');
    if (!lib.existsSync()) continue;
    var uses = false;
    for (final file in lib.listSync(recursive: true).whereType<File>()) {
      if (!file.path.endsWith('.dart')) continue;
      if (envelopeUsers.hasMatch(file.readAsStringSync())) uses = true;
    }
    if (!uses) {
      violations.add('$package does not route its channel through the shared envelope.');
    }
  }

  return violations;
}
