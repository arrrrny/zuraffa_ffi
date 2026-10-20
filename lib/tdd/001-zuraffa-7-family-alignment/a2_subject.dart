// HAND-IMPLEMENTED SUBJECT — behavior A2 (zfa:tdd: A2:hand).
//
// behavior_id: A2
// source_criterion: AC-2
// description: all five family packages resolve through one pub workspace, with one shared lockfile and one shared package configuration.
//
// The scenario reads the repository's own workspace state — the root
// pubspec's `workspace:` block, the shared lockfile, and the absence of a
// per-member lockfile or package configuration.
//
// ignore_for_file: non_constant_identifier_names
library;

import 'dart:io';

import 'family_manifest.dart';

/// Scenario runner for behavior A2.
///
/// Returns the violations found; an empty list means the scenario holds.
List<String> subject_a2() {
  final violations = <String>[];
  final root = repositoryRoot();

  final rootPubspec = File('${root.path}/pubspec.yaml').readAsStringSync();
  final workspaceBlock = RegExp(r'^workspace:\s*$', multiLine: true);
  if (!workspaceBlock.hasMatch(rootPubspec)) {
    violations.add('The repository root declares no `workspace:` block.');
  }
  for (final package in familyPackages) {
    if (!rootPubspec.contains('packages/$package')) {
      violations.add('The workspace does not list packages/$package.');
    }
  }

  if (!File('${root.path}/pubspec.lock').existsSync()) {
    violations.add('The workspace has no shared lockfile.');
  }

  for (final package in familyPackages) {
    final dir = Directory('${root.path}/packages/$package');
    if (File('${dir.path}/pubspec.lock').existsSync()) {
      violations.add(
        '$package carries its own lockfile — the workspace must share one.',
      );
    }
    if (File('${dir.path}/.dart_tool/package_config.json').existsSync()) {
      violations.add(
        '$package carries its own package configuration — the workspace must share one.',
      );
    }
  }

  return violations;
}
