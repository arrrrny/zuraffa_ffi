import 'package:zuraffa/zuraffa.dart';
import 'package:zuraffa_ffi/zuraffa_ffi.dart';

import 'macos_ffi_channel.dart';
import 'macos_ffi_exception.dart';
import 'macos_ffi_port.dart';

/// Registers the macOS adapter on [GetIt.instance]: the
/// [FfiPort] over an injected channel. An injected [timeout] is
/// applied to the wired channel. Without a channel every call surfaces
/// the typed `channel_not_wired` failure.
void registerMacosFfiDependencies(
  GetIt getIt, {
  MacosFfiChannel? channel,
  Duration? timeout,
}) {
  final wired = (channel == null)
      ? MacosFfiChannel(
          invoke: (_, __) => throw const MacosFfiException(
            'channel_not_wired',
            'No macOS channel was injected — pass one to '
            'registerMacosFfiDependencies.',
            recoverable: false,
          ),
        )
      : (timeout == null)
          ? channel
          : MacosFfiChannel(
              invoke: channel.invoke,
              timeout: timeout,
            );
  getIt.registerLazySingleton<FfiPort>(
    () => MacosFfiPort(channel: wired),
  );
}
