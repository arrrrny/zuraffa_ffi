# Traceability: 001-zuraffa-7-family-alignment

Coverage proof for `zfa tdd plan` (bug #846): every FR/AC requirement statement maps to a behavior row or an explicit manual declaration. Verify re-checks the hash — a spec edited after plan is drift (exit 3, re-plan required).

<!-- tdd:traceability
spec-hash: sha256:6a65f20e8ddcce5ff9a9e4f26d57abd98fc2a1425621488aefa8b5f0e41c490e
statements: 4
automated: 4
manual: 0
fr-manual: 0
open-gaps: 0
-->

| requirement | line | statement | behavior | status |
| --- | --- | --- | --- | --- |
| AC-1 | 7 | 1. **Given** the `zuraffa_ffi` family **When** the manifest of every member is read **Then** every member declares the same `zuraffa` constraint, and that constraint admits zuraffa 7.2.0. | A1 | automated |
| AC-2 | 9 | 2. **Given** a fresh clone of the repository **When** the developer resolves the dependencies once at the repository root **Then** all five family packages resolve through one pub workspace, with one shared lockfile and one shared package configuration. | A2 | automated |
| AC-3 | 11 | 3. **Given** a consumer of the app-facing `zuraffa_ffi` package **When** it imports the package's public entry point **Then** the shared FFI contract — port, service, module, value, exception — and the DI registration are reachable from that entry point. | A3 | automated |
| AC-4 | 13 | 4. **Given** a platform adapter package **When** its channel converts a native call **Then** the conversion goes through the shared `zuraffa_ffi_platform` envelope, and the adapter declares no envelope of its own. | A4 | automated |

