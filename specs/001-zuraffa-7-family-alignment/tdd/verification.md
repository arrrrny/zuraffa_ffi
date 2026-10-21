# TDD Verification — feature `001-zuraffa-7-family-alignment`

Generated fresh by `zfa tdd verify --feature 001-zuraffa-7-family-alignment`.

## Gate

- gate: `pass`

## Mutation buckets (FR-014)

- killed: 78
- survived: 0
- timed_out: 0

## Behavior scope (FR-018)

- `A1` — traces: `AC-1`
- `A2` — traces: `AC-2`
- `A3` — traces: `AC-3`
- `A4` — traces: `AC-4`

## Behavior kinds (issue #1376)

- presence: 0
- absence: 0
- route-outcome: 0
- enabled-state: 0
- sequence: 0

- `A1` — not traced: no scenario-assertions header in test/tdd/001-zuraffa-7-family-alignment/a1_test.dart
- `A2` — not traced: no scenario-assertions header in test/tdd/001-zuraffa-7-family-alignment/a2_test.dart
- `A3` — not traced: no scenario-assertions header in test/tdd/001-zuraffa-7-family-alignment/a3_test.dart
- `A4` — not traced: no scenario-assertions header in test/tdd/001-zuraffa-7-family-alignment/a4_test.dart

## Restoration (FR-021)

- restoration_verified: true
- restoration_scope_count: 4
- restoration_scope (subjects only, never tests):
  - `/Users/arrrrny/Developer/zuraffa_ffi/lib/tdd/001-zuraffa-7-family-alignment/a1_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_ffi/lib/tdd/001-zuraffa-7-family-alignment/a2_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_ffi/lib/tdd/001-zuraffa-7-family-alignment/a3_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_ffi/lib/tdd/001-zuraffa-7-family-alignment/a4_subject.dart`

## Repro diagnostics (FR-020, non-sensitive)

- runner_command: `dart run mutation_test`
- exit_code: 0
- elapsed_seconds: 324
- report_path: `/Users/arrrrny/Developer/zuraffa_ffi/.dart_tool/zfa/tdd-verify-report/mutation-test-report.md`
- preflight_scope_ran (bug #924, per-behavior):
  - `test/tdd/001-zuraffa-7-family-alignment/a1_test.dart`
  - `test/tdd/001-zuraffa-7-family-alignment/a2_test.dart`
  - `test/tdd/001-zuraffa-7-family-alignment/a3_test.dart`
  - `test/tdd/001-zuraffa-7-family-alignment/a4_test.dart`

## Mutation run

- mutation_was_run: true
- mutation_score: 1.0000

## Evidence binding (bug #837)

- spec_hash: c2a70ba1d6b45e2319b6279fef40af06c26c9dab678cda3fbfbd3c694b4f38d7
- subject_hash: `/Users/arrrrny/Developer/zuraffa_ffi/lib/tdd/001-zuraffa-7-family-alignment/a1_subject.dart` bbeb83f9f0a427f8f587fb85c96d85a67e51cd1a62a32767879e0ae5d9dcd57c
- subject_hash: `/Users/arrrrny/Developer/zuraffa_ffi/lib/tdd/001-zuraffa-7-family-alignment/a2_subject.dart` 4fd75d99c530bede79f74d93050f1e5338a23fb75a5718ae9e8e0d0ec294b8d9
- subject_hash: `/Users/arrrrny/Developer/zuraffa_ffi/lib/tdd/001-zuraffa-7-family-alignment/a3_subject.dart` 4ac781b3e34769d10136d83c80f90a35aeced5da155e30b763bb24ed38e3d196
- subject_hash: `/Users/arrrrny/Developer/zuraffa_ffi/lib/tdd/001-zuraffa-7-family-alignment/a4_subject.dart` 0268c10db22ebcd4be2e7a02c359ba77ff99b1b83987dd6348e22682a0a590b9
