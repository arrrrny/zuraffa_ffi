# zuraffa_ffi — monorepo

Typed FFI support for the Zuraffa ecosystem: a pure-Dart port, module lifecycle, and typed failures behind an injected platform channel with federated adapters.

Built on the [Zuraffa](https://pub.dev/packages/zuraffa) framework as part
of the zuraffa-native package family (EPIC #214).

## Installation

One dependency is enough. `zuraffa_ffi` depends on the shared platform
package and on the three platform adapters, and re-exports them:

```yaml
dependencies:
  zuraffa_ffi: ^0.2.1
```

```dart
import 'package:zuraffa_ffi/zuraffa_ffi.dart';
```

That one import gives you the port contract (`FfiPort`, `FfiModule`,
`FfiValue`, `FfiException`), the `FfiService` facade, `registerFfiDependencies`,
and the three platform registration helpers
(`registerAndroidFfiDependencies`, `registerIosFfiDependencies`,
`registerMacosFfiDependencies`).

The family ships no native code: the adapters wrap a transport the host
supplies, so no project-file change — no Podfile, no Gradle, no framework —
is needed to add the library.

## Packages

| Package | Description |
| --- | --- |
| [`packages/zuraffa_ffi`](packages/zuraffa_ffi/) | App-facing package: the port contract, `FfiService`, typed failures, DI registration, and the three platform adapters |
| [`packages/zuraffa_ffi_platform`](packages/zuraffa_ffi_platform/) | Shared core: the port contract and the channel-envelope machinery over an injected platform channel |
| [`packages/zuraffa_ffi_android`](packages/zuraffa_ffi_android/) | Android adapter (typed taxonomy over the injected channel) |
| [`packages/zuraffa_ffi_ios`](packages/zuraffa_ffi_ios/) | iOS adapter (typed taxonomy over the injected channel) |
| [`packages/zuraffa_ffi_macos`](packages/zuraffa_ffi_macos/) | macOS adapter (typed taxonomy over the injected channel) |

Publish from each package directory (`packages/<name>`); the federated
siblings depend on each other via hosted dependencies — see
[`PUBLISH.md`](PUBLISH.md) and `scripts/` for the publish pipeline.

See [`specs/`](specs/) for the spec-driven development records.

Repository: https://github.com/arrrrny/zuraffa_ffi
