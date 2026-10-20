# TDD Verification — feature `001-zuraffa-7-family-alignment`

Generated fresh by `zfa tdd verify --feature 001-zuraffa-7-family-alignment`.

## Gate

- gate: `not_assessed`
- not_assessed_reason: mutation config error: MutationConfigError: mutation_test exited with code -15 and produced no report. Stderr: 

## Mutation buckets (FR-014)

- killed: 0
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

- `A1` — not traced
- `A2` — not traced
- `A3` — not traced
- `A4` — not traced

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
- preflight_scope_ran (bug #924, per-behavior):
  - `test/tdd/001-zuraffa-7-family-alignment/a1_test.dart`
  - `test/tdd/001-zuraffa-7-family-alignment/a2_test.dart`
  - `test/tdd/001-zuraffa-7-family-alignment/a3_test.dart`
  - `test/tdd/001-zuraffa-7-family-alignment/a4_test.dart`

## Mutation run

- mutation_was_run: false

## Evidence binding (bug #837)

- spec_hash: c2a70ba1d6b45e2319b6279fef40af06c26c9dab678cda3fbfbd3c694b4f38d7
- subject_hash: `/Users/arrrrny/Developer/zuraffa_ffi/lib/tdd/001-zuraffa-7-family-alignment/a1_subject.dart` 00e547b26ad80369aca5b347e401f1fefb58398ad796098951b68aadc2ada3a1
- subject_hash: `/Users/arrrrny/Developer/zuraffa_ffi/lib/tdd/001-zuraffa-7-family-alignment/a2_subject.dart` c69d8979040ec2879ba568cb9761bf0c16979b89b922ecb59cc85cf1e22b3367
- subject_hash: `/Users/arrrrny/Developer/zuraffa_ffi/lib/tdd/001-zuraffa-7-family-alignment/a3_subject.dart` adf74ef77a5be5e153f1a30b2773b8b9610c9490eaf723d683cf893667d623d7
- subject_hash: `/Users/arrrrny/Developer/zuraffa_ffi/lib/tdd/001-zuraffa-7-family-alignment/a4_subject.dart` 662fecacfcd3aacd74052036fd5bf2922ee0fcd8353ddc3dc9efc5b20057a0ea
