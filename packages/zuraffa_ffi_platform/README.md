# zuraffa_ffi_platform

Shared channel-envelope core for the zuraffa_ffi platform adapters: decode,
typed-error plumbing, and timeout policy over an injected platform
channel. Adapters bring their own typed exception and taxonomy; the core
never invents one.

Part of the [zuraffa_ffi](https://github.com/arrrrrny/zuraffa_ffi) federated monorepo.

## Develop

```bash
dart pub get
dart test
```
