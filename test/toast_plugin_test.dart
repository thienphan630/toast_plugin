import 'package:flutter_test/flutter_test.dart';
import 'package:toast_plugin/toast_plugin.dart';
import 'package:toast_plugin/toast_plugin_platform_interface.dart';
import 'package:toast_plugin/toast_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockToastPluginPlatform
    with MockPlatformInterfaceMixin
    implements ToastPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ToastPluginPlatform initialPlatform = ToastPluginPlatform.instance;

  test('$MethodChannelToastPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelToastPlugin>());
  });

  test('getPlatformVersion', () async {
    ToastPlugin toastPlugin = ToastPlugin();
    MockToastPluginPlatform fakePlatform = MockToastPluginPlatform();
    ToastPluginPlatform.instance = fakePlatform;

    expect(await toastPlugin.getPlatformVersion(), '42');
  });
}
