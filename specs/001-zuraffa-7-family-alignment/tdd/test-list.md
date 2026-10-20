# Test List: 001-zuraffa-7-family-alignment

## Outer loop: acceptance behaviors

One per acceptance criterion in `spec.md`.

| id | behavior | traces | state |
| -- | -------- | ------ | ----- |
| A1 | every member declares the same `zuraffa` constraint, and that constraint admits zuraffa 7.2.0. | AC-1 | PENDING |
| A2 | all five family packages resolve through one pub workspace, with one shared lockfile and one shared package configuration. | AC-2 | PENDING |
| A3 | the shared FFI contract — port, service, module, value, exception — and the DI registration are reachable from that entry point. | AC-3 | PENDING |
| A4 | the conversion goes through the shared `zuraffa_ffi_platform` envelope, and the adapter declares no envelope of its own. | AC-4 | PENDING |

## Outer loop: widget behaviors

UI acceptance scenarios (bug #830): asserted through a testWidgets pair — a view-builder subject stub plus a widget test that pumps the view and asserts the scenario.

The `kind` cell is the finder-kind taxonomy (issue #1140): the scenario verbs' predicted assertion classes — presence, absence, route-outcome, enabled-state, sequence — or `none` when no finder is derivable. `zfa tdd gen` selects the assertion template by it and refuses a row whose kind column drifted from the scenario prose; verify-red's kind gate (issue #959/#964) certifies on the same vocabulary.

| id | behavior | kind | traces | state |
| -- | -------- | ---- | ------ | ----- |

## Inner loop: unit behaviors

One per functional requirement in `spec.md`.

| id | behavior | traces | state |
| -- | -------- | ------ | ----- |

## Routing provenance

Per-behavior routing decisions (issue #951): what each decision consulted — a declared marker/contract row, or the labeled legacy fallback to migrate.

route: A1 -> acceptance lane [declared: type marker, spec line 8]
route: A2 -> acceptance lane [declared: type marker, spec line 10]
route: A3 -> acceptance lane [declared: type marker, spec line 12]
route: A4 -> acceptance lane [declared: type marker, spec line 14]

