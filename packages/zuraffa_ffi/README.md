# zuraffa_ffi

Typed FFI support for the Zuraffa ecosystem: a pure-Dart port, module lifecycle, and typed failures behind an injected platform channel with federated adapters.

Part of the [zuraffa_ffi](https://github.com/arrrrny/zuraffa_ffi) federated monorepo, built on the
[Zuraffa](https://pub.dev/packages/zuraffa) framework.

## Use

One dependency is enough — this package depends on the shared platform
package and on the three platform adapters, and re-exports them:

```yaml
dependencies:
  zuraffa_ffi: ^0.2.1
```

```dart
final service = FfiService(port: myPlatformPort);
final module = await service.compile(id: 'demo', bytes: moduleBytes);
final results = await service.call(
    id: 'demo', export: 'run', args: [FfiI32(1)]);
await service.unload(id: 'demo');
```

Wire the platform adapter for the running platform first — e.g.
`registerAndroidFfiDependencies(getIt, channel: ...)` — then resolve
`FfiService`, or call `registerFfiDependencies(getIt, port: ...)` directly.
Without a wired port every call surfaces the typed `port_not_wired` failure.

The family ships no native code: the adapters wrap a transport the host
supplies, so no project-file change — no Podfile, no Gradle, no framework —
is needed to add the library.

## Develop

```bash
dart pub get
dart test
```
