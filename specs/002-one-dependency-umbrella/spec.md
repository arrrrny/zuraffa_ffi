**Template Version**: `zuraffa-1.0`

# Spec: 002-one-dependency-umbrella

## Acceptance Scenarios

1. **Given** a consumer of the app-facing `zuraffa_ffi` package **When** it imports the package's public entry point **Then** the shared FFI contract and all three platform adapters — the Android, iOS, and macOS registration helpers — are reachable from that one entry point.
   **Type**: acceptance
2. **Given** a consumer that declares only `zuraffa_ffi` as a dependency **When** the family's dependency graph is read **Then** the shared platform package and the three adapters come along with it, and no family member depends back on the app-facing package, so the graph stays acyclic.
   **Type**: acceptance
