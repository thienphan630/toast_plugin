import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'toast_plugin_platform_interface.dart';

/// An implementation of [ToastPluginPlatform] that uses method channels.
class MethodChannelToastPlugin extends ToastPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('toast_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<void> showToastMessage() async {
    await methodChannel.invokeMethod('showToastMessage');
  }
}
