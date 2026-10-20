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
// ignore_for_file: non_constant_identifier_names
library;

import 'family_manifest.dart';

/// Scenario runner for behavior A1.
///
/// Returns the violations found; an empty list means the scenario holds.
List<String> subject_a1() {
  final violations = <String>[];

  final constraints = <String, String>{};
  for (final package in familyPackages) {
    try {
      constraints[package] = declaredConstraint(package, 'zuraffa');
    } on StateError catch (error) {
      violations.add(error.message);
    }
  }

  final distinct = constraints.values.toSet();
  if (distinct.length > 1) {
    violations.add(
      'The family declares ${distinct.length} different `zuraffa` '
      'constraints: ${constraints.entries.map((e) => '${e.key}=${e.value}').join(', ')}.',
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
