import 'package:zuraffa/zuraffa.dart';
import 'package:zuraffa_ffi_platform/zuraffa_ffi_platform.dart';

import 'ios_ffi_channel.dart';
import 'ios_ffi_exception.dart';
import 'ios_ffi_port.dart';

/// Registers the iOS adapter on [GetIt.instance]: the
/// [FfiPort] over an injected channel. An injected [timeout] is
/// applied to the wired channel. Without a channel every call surfaces
/// the typed `channel_not_wired` failure.
void registerIosFfiDependencies(
  GetIt getIt, {
  IosFfiChannel? channel,
  Duration? timeout,
}) {
  final wired = (channel == null)
      ? IosFfiChannel(
          invoke: (_, __) => throw const IosFfiException(
            'channel_not_wired',
            'No iOS channel was injected — pass one to '
            'registerIosFfiDependencies.',
            recoverable: false,
          ),
        )
      : (timeout == null)
          ? channel
          : IosFfiChannel(
              invoke: channel.invoke,
              timeout: timeout,
            );
  getIt.registerLazySingleton<FfiPort>(
    () => IosFfiPort(channel: wired),
  );
}
