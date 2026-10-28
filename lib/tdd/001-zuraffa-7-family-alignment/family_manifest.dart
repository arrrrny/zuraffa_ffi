/// Shared helpers for the `001-zuraffa-7-family-alignment` behaviors: the
/// family manifest is read straight from the repository's own pubspecs, so
/// the scenarios assert the shipped state instead of a hand-kept copy of it.
library;

import 'dart:io';

/// The five members of the `zuraffa_ffi` family, in publish order.
const List<String> familyPackages = <String>[
  'zuraffa_ffi',
  'zuraffa_ffi_platform',
  'zuraffa_ffi_android',
  'zuraffa_ffi_ios',
  'zuraffa_ffi_macos',
];

/// The repository root: the directory that holds the `packages/` folder.
Directory repositoryRoot() {
  var dir = Directory.current;
  for (var i = 0; i < 8; i++) {
    if (Directory('${dir.path}/packages/zuraffa_ffi').existsSync()) {
      return dir;
    }
    final parent = dir.parent;
    if (parent.path == dir.path) break;
    dir = parent;
  }
  throw StateError(
    'Cannot locate the repository root from ${Directory.current.path}.',
  );
}

/// The raw text of a family member's pubspec.
String memberPubspec(String packageName) {
  final file = File(
    '${repositoryRoot().path}/packages/$packageName/pubspec.yaml',
  );
  if (!file.existsSync()) {
    throw StateError('Missing pubspec for $packageName.');
  }
  return file.readAsStringSync();
}

/// The constraint a family member declares for [dependency] (e.g. `zuraffa`).
String declaredConstraint(String packageName, String dependency) {
  final pattern = RegExp('^\\s*$dependency:\\s*(\\S+)\\s*\$', multiLine: true);
  final match = pattern.firstMatch(memberPubspec(packageName));
  if (match == null) {
    throw StateError(
      '$packageName declares no `$dependency` dependency.',
    );
  }
  return match.group(1)!;
}

/// The version a family member ships at. Under the mono-version policy the
/// whole family (and the core it targets) shares one version, so any
/// member's own version is the `zuraffa` release the family's constraint
/// must admit.
String declaredVersion(String packageName) {
  final match = RegExp(
    '^version:\\s*(\\S+)',
    multiLine: true,
  ).firstMatch(memberPubspec(packageName));
  if (match == null) {
    throw StateError('$packageName declares no version.');
  }
  return match.group(1)!;
}

/// Whether a caret constraint (e.g. `^7.2.0`) admits [version].
bool constraintAdmits(String constraint, String version) {
  if (!constraint.startsWith('^')) {
    throw StateError('Unsupported constraint form: $constraint');
  }
  final floor = constraint.substring(1);
  final floorParts = _parts(floor);
  final versionParts = _parts(version);
  if (versionParts.length != 3 || floorParts.length != 3) {
    throw StateError('Unsupported version form: $constraint / $version');
  }
  if (_compare(versionParts, floorParts) < 0) return false;
  // A caret constraint never crosses the major version.
  return versionParts[0] == floorParts[0];
}

List<int> _parts(String version) =>
    version.split('.').map((part) => int.parse(part)).toList();

int _compare(List<int> a, List<int> b) {
  for (var i = 0; i < 3; i++) {
    if (a[i] != b[i]) return a[i].compareTo(b[i]);
  }
  return 0;
}
