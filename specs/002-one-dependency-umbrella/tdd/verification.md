# TDD Verification — feature `002-one-dependency-umbrella`

Generated fresh by `zfa tdd verify --feature 002-one-dependency-umbrella`.

## Gate

- gate: `pass`

## Mutation buckets (FR-014)

- killed: 22
- survived: 0
- timed_out: 0

## Behavior scope (FR-018)

- `A1` — traces: `AC-1`
- `A2` — traces: `AC-2`

## Behavior kinds (issue #1376)

- presence: 0
- absence: 0
- route-outcome: 0
- enabled-state: 0
- sequence: 0

- `A1` — not traced: no scenario-assertions header in test/tdd/002-one-dependency-umbrella/a1_test.dart
- `A2` — not traced: no scenario-assertions header in test/tdd/002-one-dependency-umbrella/a2_test.dart

## Restoration (FR-021)

- restoration_verified: true
- restoration_scope_count: 2
- restoration_scope (subjects only, never tests):
  - `/Users/arrrrny/Developer/zuraffa_ffi/lib/tdd/002-one-dependency-umbrella/a1_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_ffi/lib/tdd/002-one-dependency-umbrella/a2_subject.dart`

## Repro diagnostics (FR-020, non-sensitive)

- runner_command: `dart run mutation_test`
- exit_code: 0
- elapsed_seconds: 132
- report_path: `/Users/arrrrny/Developer/zuraffa_ffi/.dart_tool/zfa/tdd-verify-report/mutation-test-report.md`
- preflight_scope_ran (bug #924, per-behavior):
  - `test/tdd/002-one-dependency-umbrella/a1_test.dart`
  - `test/tdd/002-one-dependency-umbrella/a2_test.dart`

## Mutation run

- mutation_was_run: true
- mutation_score: 1.0000

## Evidence binding (bug #837)

- spec_hash: 787213cc1a8674fe12e3972c2a322f1102d13c6f4408c9e4b0463771e4342dcc
- subject_hash: `/Users/arrrrny/Developer/zuraffa_ffi/lib/tdd/002-one-dependency-umbrella/a1_subject.dart` d19024f213580a72e351895751e4e804f7b5ed2fb972d0a7d1ba5909c6b751bb
- subject_hash: `/Users/arrrrny/Developer/zuraffa_ffi/lib/tdd/002-one-dependency-umbrella/a2_subject.dart` 43e919648eb9b0164de9e217096663b97e5f53f910c1484ffcf5e54e7fd3e1f6
