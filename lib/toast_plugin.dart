import 'toast_plugin_platform_interface.dart';

class ToastPlugin {
  Future<String?> getPlatformVersion() {
    return ToastPluginPlatform.instance.getPlatformVersion();
  }

  Future<void> showToast() async {
    ToastPluginPlatform.instance.showToastMessage();
  }
}
