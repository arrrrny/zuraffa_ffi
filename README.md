# zuraffa_ffi — monorepo

Typed FFI support for the Zuraffa ecosystem: a pure-Dart port, module lifecycle, and typed failures behind an injected platform channel with federated adapters.

Built on the [Zuraffa](https://pub.dev/packages/zuraffa) framework as part
of the zuraffa-native package family (EPIC #214).

## Packages

| Package | Description |
| --- | --- |
| [`packages/zuraffa_ffi`](packages/zuraffa_ffi/) | App-facing package: `FfiPort`, `FfiService`, typed failures + DI registration |
| [`packages/zuraffa_ffi_platform`](packages/zuraffa_ffi_platform/) | Shared channel-envelope core over an injected platform channel |
| [`packages/zuraffa_ffi_android`](packages/zuraffa_ffi_android/) | Android adapter (typed taxonomy over the injected channel) |
| [`packages/zuraffa_ffi_ios`](packages/zuraffa_ffi_ios/) | iOS adapter (typed taxonomy over the injected channel) |
| [`packages/zuraffa_ffi_macos`](packages/zuraffa_ffi_macos/) | macOS adapter (typed taxonomy over the injected channel) |

Publish from each package directory (`packages/<name>`); the federated
siblings depend on each other via hosted dependencies — see
[`PUBLISH.md`](PUBLISH.md) and `scripts/` for the publish pipeline.

See [`specs/`](specs/) for the spec-driven development records.

Repository: https://github.com/arrrrrny/zuraffa_ffi
