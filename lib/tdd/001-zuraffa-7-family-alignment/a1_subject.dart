// HAND-IMPLEMENTED SUBJECT — behavior A1 (zfa:tdd: A1:hand).
//
// behavior_id: A1
// source_criterion: AC-1
// description: every member declares the same `zuraffa` constraint, and that constraint admits zuraffa 7.2.0.
//
// The scenario reads the shipped pubspecs — the real manifest — instead of
// a hand-kept copy of it, so the check fails the moment a family member
// drifts to a different `zuraffa` constraint.
//
// The [constraints] seam lets a test drive the scenario with a deliberately
// broken family, so the failure paths are covered too and not only the
// happy path.
//
// ignore_for_file: non_constant_identifier_names
library;

import 'family_manifest.dart';

/// Scenario runner for behavior A1.
///
/// Returns the violations found; an empty list means the scenario holds.
///
/// When [constraints] is given it replaces the constraints read from the
/// shipped pubspecs: a member missing from the map counts as a member that
/// declares no `zuraffa` dependency at all.
List<String> subject_a1({Map<String, String>? constraints}) {
  final violations = <String>[];

  final resolved = <String, String>{};
  for (final package in familyPackages) {
    try {
      if (constraints == null) {
        resolved[package] = declaredConstraint(package, 'zuraffa');
      } else {
        final declared = constraints[package];
        if (declared == null) {
          throw StateError('$package declares no `zuraffa` dependency.');
        }
        resolved[package] = declared;
      }
    } on StateError catch (error) {
      violations.add(error.message);
    }
  }

  final distinct = resolved.values.toSet();
  if (distinct.length > 1) {
    violations.add(
      'The family declares ${distinct.length} different `zuraffa` '
      'constraints: ${resolved.entries.map((e) => '${e.key}=${e.value}').join(', ')}.',
    );
    return violations;
  }
  if (distinct.isEmpty) return violations;

  final constraint = distinct.single;
  if (!constraintAdmits(constraint, '7.2.0')) {
    violations.add(
      'The family constraint `$constraint` does not admit zuraffa 7.2.0.',
    );
  }
  return violations;
}
