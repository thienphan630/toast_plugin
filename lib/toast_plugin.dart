import 'package:toast_plugin/toast_type_enum.dart';

import 'toast_plugin_platform_interface.dart';

class ToastPlugin {
  Future<String?> getPlatformVersion() {
    return ToastPluginPlatform.instance.getPlatformVersion();
  }

  Future<void> showToast(String message, ToastType type) async {
    ToastPluginPlatform.instance.showToastMessage(message,type);
  }
}
