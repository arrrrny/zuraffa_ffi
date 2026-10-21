# Traceability: 002-one-dependency-umbrella

Coverage proof for `zfa tdd plan` (bug #846): every FR/AC requirement statement maps to a behavior row or an explicit manual declaration. Verify re-checks the hash — a spec edited after plan is drift (exit 3, re-plan required).

<!-- tdd:traceability
spec-hash: sha256:7f921592b2a15a8761a974e8a4c361757064634abc567d8ce1a965e5dc914e87
statements: 2
automated: 2
manual: 0
fr-manual: 0
open-gaps: 0
-->

| requirement | line | statement | behavior | status |
| --- | --- | --- | --- | --- |
| AC-1 | 7 | 1. **Given** a consumer of the app-facing `zuraffa_ffi` package **When** it imports the package's public entry point **Then** the shared FFI contract and all three platform adapters — the Android, iOS, and macOS registration helpers — are reachable from that one entry point. | A1 | automated |
| AC-2 | 9 | 2. **Given** a consumer that declares only `zuraffa_ffi` as a dependency **When** the family's dependency graph is read **Then** the shared platform package and the three adapters come along with it, and no family member depends back on the app-facing package, so the graph stays acyclic. | A2 | automated |

