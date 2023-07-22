import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'toast_plugin_method_channel.dart';

abstract class ToastPluginPlatform extends PlatformInterface {
  /// Constructs a ToastPluginPlatform.
  ToastPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static ToastPluginPlatform _instance = MethodChannelToastPlugin();

  /// The default instance of [ToastPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelToastPlugin].
  static ToastPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ToastPluginPlatform] when
  /// they register themselves.
  static set instance(ToastPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<void> showToastMessage() {
    throw UnimplementedError('showToastMessage() has not been implemented');
  }
}
