**Template Version**: `zuraffa-1.0`

# Spec: 001-zuraffa-7-family-alignment

## Acceptance Scenarios

1. **Given** the `zuraffa_ffi` family **When** the manifest of every member is read **Then** every member declares the same `zuraffa` constraint, and that constraint admits zuraffa 7.2.0.
   **Type**: acceptance
2. **Given** a fresh clone of the repository **When** the developer resolves the dependencies once at the repository root **Then** all five family packages resolve through one pub workspace, with one shared lockfile and one shared package configuration.
   **Type**: acceptance
3. **Given** a consumer of the app-facing `zuraffa_ffi` package **When** it imports the package's public entry point **Then** the shared FFI contract — port, service, module, value, exception — and the DI registration are reachable from that entry point.
   **Type**: acceptance
4. **Given** a platform adapter package **When** its channel converts a native call **Then** the conversion goes through the shared `zuraffa_ffi_platform` envelope, and the adapter declares no envelope of its own.
   **Type**: acceptance
