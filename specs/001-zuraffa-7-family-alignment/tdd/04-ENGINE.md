# Engine Plan: 001-zuraffa-7-family-alignment (CORE + BOTH)

The engine lane (issue #1000): pure Dart — behaviors whose lane is CORE or BOTH. The noFlutter guard rejects any behavior that references Flutter at plan time, so this file stays engine-only.

## Outer loop: acceptance behaviors

One per acceptance criterion in `spec.md`.

| id | behavior | traces | state |
| -- | -------- | ------ | ----- |
| A1 | every member declares the same `zuraffa` constraint, and that constraint admits zuraffa 7.2.0. | AC-1 | PENDING |
| A2 | all five family packages resolve through one pub workspace, with one shared lockfile and one shared package configuration. | AC-2 | PENDING |
| A3 | the shared FFI contract — port, service, module, value, exception — and the DI registration are reachable from that entry point. | AC-3 | PENDING |
| A4 | the conversion goes through the shared `zuraffa_ffi_platform` envelope, and the adapter declares no envelope of its own. | AC-4 | PENDING |

## Routing provenance

Per-behavior routing decisions (issue #951): what each decision consulted — a declared marker/contract row, or the labeled legacy fallback to migrate.

route: A1 -> acceptance lane [declared: type marker, spec line 8]
route: A2 -> acceptance lane [declared: type marker, spec line 10]
route: A3 -> acceptance lane [declared: type marker, spec line 12]
route: A4 -> acceptance lane [declared: type marker, spec line 14]


