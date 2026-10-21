# Cycle Log

Append only. Newest last. Every entry's `red` block is the evidence that the test existed and failed before the implementation.

## Cycle: A1 (red)

- behavior: A1
- kind: red
- classification: assertionFailure
- subject-hash: a4ca32dd9fb5cfe9554201b8459052a7d431f4d04cd5d82544f226db2e7883f3
- criterion: AC-1
- test: /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart --plain-name "the shared FFI contract and all three platform adapters — the Android, iOS, and macOS registration helpers — are reachable from that one entry point."`
- exit: 1
- at: 2026-10-21T06:49:40.560743Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart                                                                                               
00:00 +0: A1 (AC-1) A1 — the shared FFI contract and all three platform adapters — the Android, iOS, and macOS registration helpers — are reachable from that one entry point.                         
00:00 +0 -1: A1 (AC-1) A1 — the shared FFI contract and all three platform adapters — the Android, iOS, and macOS registration helpers — are reachable from that one entry point. [E]                  
  Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_a1 not implemented>
  
  package:matcher                                         expect
  test/tdd/002-one-dependency-umbrella/a1_test.dart 32:7  main.<fn>.<fn>
  

To run this test again: /usr/local/share/flutter/bin/cache/dart-sdk/bin/dart test /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart -p vm --plain-name 'A1 (AC-1) A1 — the shared FFI contract and all three platform adapters — the Android, iOS, and macOS registration helpers — are reachable from that one entry point.'

00:00 +0 -1: Some tests failed.                                                                                                                                                                        

Consider enabling the flag chain-stack-traces to receive more detailed exceptions.
For example, 'dart test --chain-stack-traces'.
```

- schema: 1
- prev-hash: genesis
- hash: b6aef9f94410640c477ed460034a9dc6aade860c6c6bfc789e505bcccc4d10b4

## Cycle: A2 (red)

- behavior: A2
- kind: red
- classification: assertionFailure
- subject-hash: f32f169ff190351f84e9475fd6b9d1f5342ca42f4ae6cf6571c9db44f3434719
- criterion: AC-2
- test: /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a2_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a2_test.dart --plain-name "the shared platform package and the three adapters come along with it, and no family member depends back on the app-facing package, so the graph stays acyclic."`
- exit: 1
- at: 2026-10-21T06:49:42.862172Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a2_test.dart                                                                                               
00:00 +0: A2 (AC-2) A2 — the shared platform package and the three adapters come along with it, and no family member depends back on the app-facing package, so the graph stays acyclic.               
00:00 +0 -1: A2 (AC-2) A2 — the shared platform package and the three adapters come along with it, and no family member depends back on the app-facing package, so the graph stays acyclic. [E]        
  Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_a2 not implemented>
  
  package:matcher                                         expect
  test/tdd/002-one-dependency-umbrella/a2_test.dart 45:7  main.<fn>.<fn>
  

To run this test again: /usr/local/share/flutter/bin/cache/dart-sdk/bin/dart test /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a2_test.dart -p vm --plain-name 'A2 (AC-2) A2 — the shared platform package and the three adapters come along with it, and no family member depends back on the app-facing package, so the graph stays acyclic.'

00:00 +0 -1: Some tests failed.                                                                                                                                                                        

Consider enabling the flag chain-stack-traces to receive more detailed exceptions.
For example, 'dart test --chain-stack-traces'.
```

- schema: 1
- prev-hash: genesis
- hash: 52f99919bc459393024e08bdb88d35f3293d06acdc45ea63e6cac7e85f19154d

## Cycle: A1 (green)

- behavior: A1
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: d70888ecd99fec6f8ae02ef5b61dd083a6d42cccac2299bf7b57aad84661f74d
- criterion: AC-1
- test: /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart --plain-name "the shared FFI contract and all three platform adapters — the Android, iOS, and macOS registration helpers — are reachable from that one entry point."`
- exit: 0
- at: 2026-10-21T06:49:57.301247Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart                                                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart                                                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart                                                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart                                                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart                                                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart                                                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart                                                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart                                                                                               
00:07 +0: A1 (AC-1) A1 — the shared FFI contract and all three platform adapters — the Android, iOS, and macOS registration helpers — are reachable from that one entry point.                         
00:07 +1: A1 (AC-1) A1 — the shared FFI contract and all three platform adapters — the Android, iOS, and macOS registration helpers — are reachable from that one entry point.                         
00:08 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: b6aef9f94410640c477ed460034a9dc6aade860c6c6bfc789e505bcccc4d10b4
- hash: e3c866d596d7fe23dafa207639a44338596cc7e82e912112fc2360564ee2f840

## Cycle: A2 (green)

- behavior: A2
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 43e919648eb9b0164de9e217096663b97e5f53f910c1484ffcf5e54e7fd3e1f6
- criterion: AC-2
- test: /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a2_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a2_test.dart --plain-name "the shared platform package and the three adapters come along with it, and no family member depends back on the app-facing package, so the graph stays acyclic."`
- exit: 0
- at: 2026-10-21T06:50:00.640784Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a2_test.dart                                                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a2_test.dart                                                                                               
00:01 +0: A2 (AC-2) A2 — the shared platform package and the three adapters come along with it, and no family member depends back on the app-facing package, so the graph stays acyclic.               
00:01 +1: A2 (AC-2) A2 — the shared platform package and the three adapters come along with it, and no family member depends back on the app-facing package, so the graph stays acyclic.               
00:01 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 52f99919bc459393024e08bdb88d35f3293d06acdc45ea63e6cac7e85f19154d
- hash: f154bb4974f8b82639c37cfece2df51bdad48c34120c2d44d10ea664ee4c9820

## Cycle: A1 (green)

- behavior: A1
- kind: green
- subject-hash: d70888ecd99fec6f8ae02ef5b61dd083a6d42cccac2299bf7b57aad84661f74d
- criterion: AC-1
- test: test/tdd/002-one-dependency-umbrella/a1_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart --plain-name "the shared FFI contract and all three platform adapters — the Android, iOS, and macOS registration helpers — are reachable from that one entry point."`
- exit: 0
- at: 2026-10-21T06:50:15.192190Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart                                                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart                                                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart                                                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart                                                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart                                                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart                                                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart                                                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart                                                                                               
00:07 +0: A1 (AC-1) A1 — the shared FFI contract and all three platform adapters — the Android, iOS, and macOS registration helpers — are reachable from that one entry point.                         
00:08 +0: A1 (AC-1) A1 — the shared FFI contract and all three platform adapters — the Android, iOS, and macOS registration helpers — are reachable from that one entry point.                         
00:08 +1: A1 (AC-1) A1 — the shared FFI contract and all three platform adapters — the Android, iOS, and macOS registration helpers — are reachable from that one entry point.                         
00:08 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: e3c866d596d7fe23dafa207639a44338596cc7e82e912112fc2360564ee2f840
- hash: 855db776f7598107e1bd606ab7780ff17de153544c3cc397c565c4732a8dac7f

## Cycle: A2 (green)

- behavior: A2
- kind: green
- subject-hash: 43e919648eb9b0164de9e217096663b97e5f53f910c1484ffcf5e54e7fd3e1f6
- criterion: AC-2
- test: test/tdd/002-one-dependency-umbrella/a2_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a2_test.dart --plain-name "the shared platform package and the three adapters come along with it, and no family member depends back on the app-facing package, so the graph stays acyclic."`
- exit: 0
- at: 2026-10-21T06:50:18.519746Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a2_test.dart                                                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a2_test.dart                                                                                               
00:01 +0: A2 (AC-2) A2 — the shared platform package and the three adapters come along with it, and no family member depends back on the app-facing package, so the graph stays acyclic.               
00:01 +1: A2 (AC-2) A2 — the shared platform package and the three adapters come along with it, and no family member depends back on the app-facing package, so the graph stays acyclic.               
00:01 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: f154bb4974f8b82639c37cfece2df51bdad48c34120c2d44d10ea664ee4c9820
- hash: 0d153a8dbc5167ff83a82cbfad83eedefe06de0be2620316c466c35344870a67

## Cycle: A1 (green)

- behavior: A1
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: d19024f213580a72e351895751e4e804f7b5ed2fb972d0a7d1ba5909c6b751bb
- criterion: AC-1
- test: /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart --plain-name "the shared FFI contract and all three platform adapters — the Android, iOS, and macOS registration helpers — are reachable from that one entry point."`
- exit: 0
- at: 2026-10-21T06:52:57.613434Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart                                                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart                                                                                               
00:01 +0: A1 (AC-1) A1 — the shared FFI contract and all three platform adapters — the Android, iOS, and macOS registration helpers — are reachable from that one entry point.                         
00:01 +1: A1 (AC-1) A1 — the shared FFI contract and all three platform adapters — the Android, iOS, and macOS registration helpers — are reachable from that one entry point.                         
00:02 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 855db776f7598107e1bd606ab7780ff17de153544c3cc397c565c4732a8dac7f
- hash: 9037ca80f9985fb020cb17b2c159e1953ccd0140fbb747425e18eb10b40a6837

## Cycle: A1 (green)

- behavior: A1
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: d19024f213580a72e351895751e4e804f7b5ed2fb972d0a7d1ba5909c6b751bb
- criterion: AC-1
- test: /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart --plain-name "the shared FFI contract and all three platform adapters — the Android, iOS, and macOS registration helpers — are reachable from that one entry point."`
- exit: 0
- at: 2026-10-21T07:02:31.100033Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart                                                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a1_test.dart                                                                                               
00:01 +0: A1 (AC-1) A1 — the shared FFI contract and all three platform adapters — the Android, iOS, and macOS registration helpers — are reachable from that one entry point.                         
00:01 +1: A1 (AC-1) A1 — the shared FFI contract and all three platform adapters — the Android, iOS, and macOS registration helpers — are reachable from that one entry point.                         
00:01 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 9037ca80f9985fb020cb17b2c159e1953ccd0140fbb747425e18eb10b40a6837
- hash: edc93086edec9643af9390dc84ed3f5091089dfb0b49fef7e3155015455c4578

## Cycle: A2 (green)

- behavior: A2
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 43e919648eb9b0164de9e217096663b97e5f53f910c1484ffcf5e54e7fd3e1f6
- criterion: AC-2
- test: /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a2_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a2_test.dart --plain-name "the shared platform package and the three adapters come along with it, and no family member depends back on the app-facing package, so the graph stays acyclic."`
- exit: 0
- at: 2026-10-21T07:02:34.468629Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a2_test.dart                                                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_ffi/test/tdd/002-one-dependency-umbrella/a2_test.dart                                                                                               
00:01 +0: A2 (AC-2) A2 — the shared platform package and the three adapters come along with it, and no family member depends back on the app-facing package, so the graph stays acyclic.               
00:01 +1: A2 (AC-2) A2 — the shared platform package and the three adapters come along with it, and no family member depends back on the app-facing package, so the graph stays acyclic.               
00:01 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 0d153a8dbc5167ff83a82cbfad83eedefe06de0be2620316c466c35344870a67
- hash: 520a75877e110fe57281008f592ef88505c5fdfb60f3651d03d3569dd6c223b5

