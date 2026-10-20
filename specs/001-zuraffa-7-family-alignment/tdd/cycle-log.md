# Cycle Log

Append only. Newest last. Every entry's `red` block is the evidence that the test existed and failed before the implementation.

## Cycle: A1 (red)

- behavior: A1
- kind: red
- classification: assertionFailure
- subject-hash: 562a092487850965128b73d07dd856a3582a6b9c1abb64cbae50533be63a4b07
- criterion: AC-1
- test: /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart --plain-name "every family package declares the same `zuraffa` constraint, and that constraint admits the latest published `zuraffa` release."`
- exit: 1
- at: 2026-10-20T18:56:54.274532Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:04 +0: A1 (AC-1) A1 — every family package declares the same `zuraffa` constraint, and that constraint admits the latest published `zuraffa` release.                                               
00:05 +0: A1 (AC-1) A1 — every family package declares the same `zuraffa` constraint, and that constraint admits the latest published `zuraffa` release.                                               
00:05 +0 -1: A1 (AC-1) A1 — every family package declares the same `zuraffa` constraint, and that constraint admits the latest published `zuraffa` release. [E]                                        
  Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_a1 not implemented>
  
  package:matcher                                            expect
  test/tdd/001-zuraffa-7-family-alignment/a1_test.dart 37:7  main.<fn>.<fn>
  

To run this test again: /usr/local/share/flutter/bin/cache/dart-sdk/bin/dart test /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart -p vm --plain-name 'A1 (AC-1) A1 — every family package declares the same `zuraffa` constraint, and that constraint admits the latest published `zuraffa` release.'

00:06 +0 -1: Some tests failed.                                                                                                                                                                        

Consider enabling the flag chain-stack-traces to receive more detailed exceptions.
For example, 'dart test --chain-stack-traces'.
```

- schema: 1
- prev-hash: genesis
- hash: 663dabb9b00f7c91a505e10cfe9a28e2c36718be3597653efe1afc0d68d2665e

## Cycle: A1 (red)

- behavior: A1
- kind: red
- classification: assertionFailure
- subject-hash: fcdd2d8d85510b820783f06b19e2028c41a51128e01be186fbb8ecd1f5b56fb7
- criterion: AC-1
- test: /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart --plain-name "every member declares the same `zuraffa` constraint, and that constraint admits zuraffa 7.2.0."`
- exit: 1
- at: 2026-10-20T19:07:39.589284Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:04 +0: A1 (AC-1) A1 — every member declares the same `zuraffa` constraint, and that constraint admits zuraffa 7.2.0.                                                                                
00:05 +0 -1: A1 (AC-1) A1 — every member declares the same `zuraffa` constraint, and that constraint admits zuraffa 7.2.0.                                                                             
00:05 +0 -1: A1 (AC-1) A1 — every member declares the same `zuraffa` constraint, and that constraint admits zuraffa 7.2.0. [E]                                                                         
  Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_a1 not implemented>
  
  package:matcher                                            expect
  test/tdd/001-zuraffa-7-family-alignment/a1_test.dart 37:7  main.<fn>.<fn>
  

To run this test again: /usr/local/share/flutter/bin/cache/dart-sdk/bin/dart test /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart -p vm --plain-name 'A1 (AC-1) A1 — every member declares the same `zuraffa` constraint, and that constraint admits zuraffa 7.2.0.'

00:05 +0 -1: Some tests failed.                                                                                                                                                                        

Consider enabling the flag chain-stack-traces to receive more detailed exceptions.
For example, 'dart test --chain-stack-traces'.
```

- schema: 1
- prev-hash: 663dabb9b00f7c91a505e10cfe9a28e2c36718be3597653efe1afc0d68d2665e
- hash: 6f357e740a9f3fe3f46de637f433510a50eeef9409ad070aabbd642288238d89

## Cycle: A1 (green)

- behavior: A1
- kind: green
- subject-hash: 00e547b26ad80369aca5b347e401f1fefb58398ad796098951b68aadc2ada3a1
- criterion: AC-1
- test: test/tdd/001-zuraffa-7-family-alignment/a1_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart --plain-name "every member declares the same `zuraffa` constraint, and that constraint admits zuraffa 7.2.0."`
- exit: 0
- at: 2026-10-20T19:08:22.451392Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:08 +0: A1 (AC-1) A1 — every member declares the same `zuraffa` constraint, and that constraint admits zuraffa 7.2.0.                                                                                
00:08 +1: A1 (AC-1) A1 — every member declares the same `zuraffa` constraint, and that constraint admits zuraffa 7.2.0.                                                                                
00:08 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 6f357e740a9f3fe3f46de637f433510a50eeef9409ad070aabbd642288238d89
- hash: d9a5ca57b7f57425a213403b9858da4f4d18b86b96ad52e1e78189b5d1ccc6c0

## Cycle: A2 (red)

- behavior: A2
- kind: red
- classification: assertionFailure
- subject-hash: c2af1c3c036dbaa881fce6b2434076218f862efc61633574e1a57e2c8cfb8d32
- criterion: AC-2
- test: /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart`
- exit: 1
- at: 2026-10-20T19:10:06.287525Z
- output:
```
Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_a2 not implemented>
  
  package:matcher                                            expect
  test/tdd/001-zuraffa-7-family-alignment/a2_test.dart 37:7  main.<fn>.<fn>
  

(batched red — one runner invocation for 3 behavior(s), spec 069 T002)
```

- schema: 1
- prev-hash: genesis
- hash: 49964b9fc0c99f275c1c5615772f56814def76aa389f648b3d176f6454d07ed0

## Cycle: A3 (red)

- behavior: A3
- kind: red
- classification: assertionFailure
- subject-hash: 0ac0317ea73056b1476795219122b9d43328e01d059d59d964b3d8571edb1569
- criterion: AC-3
- test: /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart`
- exit: 1
- at: 2026-10-20T19:10:06.314642Z
- output:
```
Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_a3 not implemented>
  
  package:matcher                                            expect
  test/tdd/001-zuraffa-7-family-alignment/a3_test.dart 37:7  main.<fn>.<fn>
  

(batched red — one runner invocation for 3 behavior(s), spec 069 T002)
```

- schema: 1
- prev-hash: genesis
- hash: 88f247212edd4b0e1569065192f3fa886b17b4d490f7328f6876949c69d25ca3

## Cycle: A4 (red)

- behavior: A4
- kind: red
- classification: assertionFailure
- subject-hash: a73080d487393e5461cb29b3384969ed6ff0792e77d0abe52c68ac63d36b267c
- criterion: AC-4
- test: /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart`
- exit: 1
- at: 2026-10-20T19:10:06.332352Z
- output:
```
Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_a4 not implemented>
  
  package:matcher                                            expect
  test/tdd/001-zuraffa-7-family-alignment/a4_test.dart 37:7  main.<fn>.<fn>
  

(batched red — one runner invocation for 3 behavior(s), spec 069 T002)
```

- schema: 1
- prev-hash: genesis
- hash: 36cdd62eff65bac87081bc639c5b7aaaa831117d4620dd48ee196a22ad9db877

## Cycle: A2 (green)

- behavior: A2
- kind: green
- subject-hash: c69d8979040ec2879ba568cb9761bf0c16979b89b922ecb59cc85cf1e22b3367
- criterion: AC-2
- test: test/tdd/001-zuraffa-7-family-alignment/a2_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart --plain-name "all five family packages resolve through one pub workspace, with one shared lockfile and one shared package configuration."`
- exit: 0
- at: 2026-10-20T19:10:46.892558Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart                                                                                            
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart                                                                                            
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart                                                                                            
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart                                                                                            
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart                                                                                            
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart                                                                                            
00:05 +0: A2 (AC-2) A2 — all five family packages resolve through one pub workspace, with one shared lockfile and one shared package configuration.                                                    
00:06 +0: A2 (AC-2) A2 — all five family packages resolve through one pub workspace, with one shared lockfile and one shared package configuration.                                                    
00:06 +1: A2 (AC-2) A2 — all five family packages resolve through one pub workspace, with one shared lockfile and one shared package configuration.                                                    
00:06 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 49964b9fc0c99f275c1c5615772f56814def76aa389f648b3d176f6454d07ed0
- hash: 275e618ebe905e7af2d6290a9fbb74f90b3b9519430646bbceeb7bd50c58da0b

## Cycle: A4 (green)

- behavior: A4
- kind: green
- subject-hash: 662fecacfcd3aacd74052036fd5bf2922ee0fcd8353ddc3dc9efc5b20057a0ea
- criterion: AC-4
- test: test/tdd/001-zuraffa-7-family-alignment/a4_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart --plain-name "the conversion goes through the shared `zuraffa_ffi_platform` envelope, and the adapter declares no envelope of its own."`
- exit: 0
- at: 2026-10-20T19:12:36.573308Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:08 +0: A4 (AC-4) A4 — the conversion goes through the shared `zuraffa_ffi_platform` envelope, and the adapter declares no envelope of its own.                                                      
00:08 +1: A4 (AC-4) A4 — the conversion goes through the shared `zuraffa_ffi_platform` envelope, and the adapter declares no envelope of its own.                                                      
00:08 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 36cdd62eff65bac87081bc639c5b7aaaa831117d4620dd48ee196a22ad9db877
- hash: fb104b3cccc0b61aa2acba63a011263b549a5216d4531ec0eb1f5bfe04c5619c

## Cycle: A3 (green)

- behavior: A3
- kind: green
- subject-hash: adf74ef77a5be5e153f1a30b2773b8b9610c9490eaf723d683cf893667d623d7
- criterion: AC-3
- test: test/tdd/001-zuraffa-7-family-alignment/a3_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart --plain-name "the shared FFI contract — port, service, module, value, exception — and the DI registration are reachable from that entry point."`
- exit: 0
- at: 2026-10-20T19:26:48.207406Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:02 +0: A3 (AC-3) A3 — the shared FFI contract — port, service, module, value, exception — and the DI registration are reachable from that entry point.                                              
00:02 +1: A3 (AC-3) A3 — the shared FFI contract — port, service, module, value, exception — and the DI registration are reachable from that entry point.                                              
00:02 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 88f247212edd4b0e1569065192f3fa886b17b4d490f7328f6876949c69d25ca3
- hash: 0930540fe97cfa8791e83f2ce8bd88bb09f7fcd4a84bc8f9406aff0e6e34040c

## Cycle: A1 (green)

- behavior: A1
- kind: green
- subject-hash: 00e547b26ad80369aca5b347e401f1fefb58398ad796098951b68aadc2ada3a1
- criterion: AC-1
- test: test/tdd/001-zuraffa-7-family-alignment/a1_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart --plain-name "every member declares the same `zuraffa` constraint, and that constraint admits zuraffa 7.2.0."`
- exit: 0
- at: 2026-10-20T19:28:49.492240Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:21 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:22 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:23 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:23 +0: A1 (AC-1) A1 — every member declares the same `zuraffa` constraint, and that constraint admits zuraffa 7.2.0.                                                                                
00:24 +0: A1 (AC-1) A1 — every member declares the same `zuraffa` constraint, and that constraint admits zuraffa 7.2.0.                                                                                
00:24 +1: A1 (AC-1) A1 — every member declares the same `zuraffa` constraint, and that constraint admits zuraffa 7.2.0.                                                                                
00:24 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: d9a5ca57b7f57425a213403b9858da4f4d18b86b96ad52e1e78189b5d1ccc6c0
- hash: f3364ecc29c3048977f3d2b7d6bf709baa20c704a6dceafdc89dcc25f9c15fd7

## Cycle: A1 (green)

- behavior: A1
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: bbeb83f9f0a427f8f587fb85c96d85a67e51cd1a62a32767879e0ae5d9dcd57c
- criterion: AC-1
- test: /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart --plain-name "every member declares the same `zuraffa` constraint, and that constraint admits zuraffa 7.2.0."`
- exit: 0
- at: 2026-10-20T20:54:47.821666Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:08 +0: A1 (AC-1) A1 — every member declares the same `zuraffa` constraint, and that constraint admits zuraffa 7.2.0.                                                                                
00:08 +1: A1 (AC-1) A1 — every member declares the same `zuraffa` constraint, and that constraint admits zuraffa 7.2.0.                                                                                
00:09 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: f3364ecc29c3048977f3d2b7d6bf709baa20c704a6dceafdc89dcc25f9c15fd7
- hash: 5a4747e458c2648c0083e368df598ea60dd3def467bd2398fae75d9b06eec198

## Cycle: A1 (green)

- behavior: A1
- kind: green
- subject-hash: bbeb83f9f0a427f8f587fb85c96d85a67e51cd1a62a32767879e0ae5d9dcd57c
- criterion: AC-1
- test: test/tdd/001-zuraffa-7-family-alignment/a1_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart --plain-name "every member declares the same `zuraffa` constraint, and that constraint admits zuraffa 7.2.0."`
- exit: 0
- at: 2026-10-20T20:55:19.765575Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a1_test.dart                                                                                            
00:08 +0: A1 (AC-1) A1 — every member declares the same `zuraffa` constraint, and that constraint admits zuraffa 7.2.0.                                                                                
00:09 +0: A1 (AC-1) A1 — every member declares the same `zuraffa` constraint, and that constraint admits zuraffa 7.2.0.                                                                                
00:09 +1: A1 (AC-1) A1 — every member declares the same `zuraffa` constraint, and that constraint admits zuraffa 7.2.0.                                                                                
00:09 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 5a4747e458c2648c0083e368df598ea60dd3def467bd2398fae75d9b06eec198
- hash: e3be601d6ab1192cbf5d3c4fc5b6953c6133174a43cc454186d349be77364e4a

## Cycle: A2 (green)

- behavior: A2
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 4fd75d99c530bede79f74d93050f1e5338a23fb75a5718ae9e8e0d0ec294b8d9
- criterion: AC-2
- test: /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart --plain-name "all five family packages resolve through one pub workspace, with one shared lockfile and one shared package configuration."`
- exit: 0
- at: 2026-10-20T20:55:40.788272Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart                                                                                            
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart                                                                                            
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart                                                                                            
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart                                                                                            
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart                                                                                            
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart                                                                                            
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart                                                                                            
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart                                                                                            
00:07 +0: A2 (AC-2) A2 — all five family packages resolve through one pub workspace, with one shared lockfile and one shared package configuration.                                                    
00:08 +0: A2 (AC-2) A2 — all five family packages resolve through one pub workspace, with one shared lockfile and one shared package configuration.                                                    
00:08 +1: A2 (AC-2) A2 — all five family packages resolve through one pub workspace, with one shared lockfile and one shared package configuration.                                                    
00:08 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 275e618ebe905e7af2d6290a9fbb74f90b3b9519430646bbceeb7bd50c58da0b
- hash: c8bbd3c052c7be8899f8df79d1550d691e71270f22ec43a9b73906953ed6416e

## Cycle: A2 (green)

- behavior: A2
- kind: green
- subject-hash: 4fd75d99c530bede79f74d93050f1e5338a23fb75a5718ae9e8e0d0ec294b8d9
- criterion: AC-2
- test: test/tdd/001-zuraffa-7-family-alignment/a2_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart --plain-name "all five family packages resolve through one pub workspace, with one shared lockfile and one shared package configuration."`
- exit: 0
- at: 2026-10-20T20:55:58.418657Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart                                                                                            
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart                                                                                            
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart                                                                                            
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart                                                                                            
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart                                                                                            
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart                                                                                            
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a2_test.dart                                                                                            
00:06 +0: A2 (AC-2) A2 — all five family packages resolve through one pub workspace, with one shared lockfile and one shared package configuration.                                                    
00:07 +0: A2 (AC-2) A2 — all five family packages resolve through one pub workspace, with one shared lockfile and one shared package configuration.                                                    
00:07 +1: A2 (AC-2) A2 — all five family packages resolve through one pub workspace, with one shared lockfile and one shared package configuration.                                                    
00:07 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: c8bbd3c052c7be8899f8df79d1550d691e71270f22ec43a9b73906953ed6416e
- hash: 1e0ab6fe06f199b17ad30640c069ed3c545a5adece47d9528dc1f379b9f1d820

## Cycle: A3 (green)

- behavior: A3
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 4ac781b3e34769d10136d83c80f90a35aeced5da155e30b763bb24ed38e3d196
- criterion: AC-3
- test: /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart --plain-name "the shared FFI contract — port, service, module, value, exception — and the DI registration are reachable from that entry point."`
- exit: 0
- at: 2026-10-20T20:57:46.929640Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:21 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:22 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:23 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:24 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:25 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:26 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:27 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:28 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:29 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:30 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:31 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:32 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:33 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:34 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:35 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:36 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:37 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:38 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:39 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:40 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:41 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:42 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:43 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:44 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:45 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:46 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:47 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:48 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:49 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:50 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:51 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:52 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:53 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:54 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:55 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:56 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:57 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:58 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:59 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:00 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:01 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:02 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:03 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:04 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:05 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:06 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:07 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:08 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:09 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:10 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:11 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:12 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:13 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:14 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:15 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:16 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:17 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:18 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:19 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:20 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:21 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:22 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:23 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:24 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:25 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:26 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:27 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:28 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:29 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:30 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:31 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:32 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:33 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:34 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:35 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:36 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:37 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:38 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
01:38 +0: A3 (AC-3) A3 — the shared FFI contract — port, service, module, value, exception — and the DI registration are reachable from that entry point.                                              
01:38 +1: A3 (AC-3) A3 — the shared FFI contract — port, service, module, value, exception — and the DI registration are reachable from that entry point.                                              
01:38 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 0930540fe97cfa8791e83f2ce8bd88bb09f7fcd4a84bc8f9406aff0e6e34040c
- hash: 4cab7e90557d4176149efae37a47483eb82bf88059cd64579809eaf1d89ba479

## Cycle: A3 (green)

- behavior: A3
- kind: green
- subject-hash: 4ac781b3e34769d10136d83c80f90a35aeced5da155e30b763bb24ed38e3d196
- criterion: AC-3
- test: test/tdd/001-zuraffa-7-family-alignment/a3_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart --plain-name "the shared FFI contract — port, service, module, value, exception — and the DI registration are reachable from that entry point."`
- exit: 0
- at: 2026-10-20T20:58:13.079178Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a3_test.dart                                                                                            
00:16 +0: A3 (AC-3) A3 — the shared FFI contract — port, service, module, value, exception — and the DI registration are reachable from that entry point.                                              
00:16 +1: A3 (AC-3) A3 — the shared FFI contract — port, service, module, value, exception — and the DI registration are reachable from that entry point.                                              
00:17 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 4cab7e90557d4176149efae37a47483eb82bf88059cd64579809eaf1d89ba479
- hash: f51c9826fae2e6968be4ecfc0cbfc22494c4d4e8c7d205527d572b8c5799b73e

## Cycle: A4 (green)

- behavior: A4
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 0268c10db22ebcd4be2e7a02c359ba77ff99b1b83987dd6348e22682a0a590b9
- criterion: AC-4
- test: /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart --plain-name "the conversion goes through the shared `zuraffa_ffi_platform` envelope, and the adapter declares no envelope of its own."`
- exit: 0
- at: 2026-10-20T20:58:42.395354Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:19 +0: A4 (AC-4) A4 — the conversion goes through the shared `zuraffa_ffi_platform` envelope, and the adapter declares no envelope of its own.                                                      
00:20 +1: A4 (AC-4) A4 — the conversion goes through the shared `zuraffa_ffi_platform` envelope, and the adapter declares no envelope of its own.                                                      
00:20 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: fb104b3cccc0b61aa2acba63a011263b549a5216d4531ec0eb1f5bfe04c5619c
- hash: 7e0ce60b8008df2ec940d0e13cceb36250d73cca11a43f0b56aa330b26d70a4c

## Cycle: A4 (green)

- behavior: A4
- kind: green
- subject-hash: 0268c10db22ebcd4be2e7a02c359ba77ff99b1b83987dd6348e22682a0a590b9
- criterion: AC-4
- test: test/tdd/001-zuraffa-7-family-alignment/a4_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart --plain-name "the conversion goes through the shared `zuraffa_ffi_platform` envelope, and the adapter declares no envelope of its own."`
- exit: 0
- at: 2026-10-20T20:58:55.551329Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/001-zuraffa-7-family-alignment/a4_test.dart                                                                                            
00:04 +0: A4 (AC-4) A4 — the conversion goes through the shared `zuraffa_ffi_platform` envelope, and the adapter declares no envelope of its own.                                                      
00:04 +1: A4 (AC-4) A4 — the conversion goes through the shared `zuraffa_ffi_platform` envelope, and the adapter declares no envelope of its own.                                                      
00:04 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 7e0ce60b8008df2ec940d0e13cceb36250d73cca11a43f0b56aa330b26d70a4c
- hash: 3d19de19aa15922115ff2e742449125c12674500b2e2e1a46b75f3beba121e80

