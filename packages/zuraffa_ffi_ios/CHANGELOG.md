## 0.2.1

- One dependency is enough: `zuraffa_ffi` now depends on the shared platform
  package and on the three platform adapters, and re-exports them. A consumer
  that adds `zuraffa_ffi` alone gets the port contract *and* every platform
  adapter — `registerAndroidFfiDependencies`, `registerIosFfiDependencies`,
  and `registerMacosFfiDependencies` — instead of having to add four
  dependencies by hand.
- The port contract (`FfiPort`, `FfiModule`, `FfiValue`, `FfiException`) moved
  down into `zuraffa_ffi_platform`, the layer the adapters already depend on.
  The adapters used to import it back from the app-facing package, which
  would have made the new dependency circular. The public names are
  unchanged: every one of them stays importable from
  `package:zuraffa_ffi/zuraffa_ffi.dart`.
- The publish order changed to platform → adapters → app-facing, because the
  app-facing package now depends on the rest of the family.

## 0.2.0

- Widened every member to `zuraffa: ^7.2.0` (from `^6.2.2`) — the latest
  published zuraffa release. No API changes: the full suite passes unchanged
  against 7.2.0.
- The five packages now resolve through one pub workspace with one shared
  lockfile, instead of five independent resolutions.

# Changelog

## 0.1.0

- Initial scaffold as part of the `zuraffa_ffi` federated monorepo (EPIC #214).
