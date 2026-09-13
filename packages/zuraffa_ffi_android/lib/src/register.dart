import 'package:zuraffa/zuraffa.dart';
import 'package:zuraffa_ffi/zuraffa_ffi.dart';

import 'android_ffi_channel.dart';
import 'android_ffi_exception.dart';
import 'android_ffi_port.dart';

/// Registers the Android adapter on [GetIt.instance]: the
/// [FfiPort] over an injected channel. An injected [timeout] is
/// applied to the wired channel. Without a channel every call surfaces
/// the typed `channel_not_wired` failure.
void registerAndroidFfiDependencies(
  GetIt getIt, {
  AndroidFfiChannel? channel,
  Duration? timeout,
}) {
  final wired = (channel == null)
      ? AndroidFfiChannel(
          invoke: (_, __) => throw const AndroidFfiException(
            'channel_not_wired',
            'No Android channel was injected — pass one to '
            'registerAndroidFfiDependencies.',
            recoverable: false,
          ),
        )
      : (timeout == null)
          ? channel
          : AndroidFfiChannel(
              invoke: channel.invoke,
              timeout: timeout,
            );
  getIt.registerLazySingleton<FfiPort>(
    () => AndroidFfiPort(channel: wired),
  );
}
