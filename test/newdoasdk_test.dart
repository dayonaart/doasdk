import 'package:flutter_test/flutter_test.dart';
import 'package:newdoasdk/newdoasdk.dart';
import 'package:newdoasdk/newdoasdk_platform_interface.dart';
import 'package:newdoasdk/newdoasdk_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNewdoasdkPlatform
    with MockPlatformInterfaceMixin
    implements NewdoasdkPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final NewdoasdkPlatform initialPlatform = NewdoasdkPlatform.instance;

  test('$MethodChannelNewdoasdk is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNewdoasdk>());
  });

  test('getPlatformVersion', () async {
    NewDoasdk newDoasdkPlugin = NewDoasdk();
    MockNewdoasdkPlatform fakePlatform = MockNewdoasdkPlatform();
    NewdoasdkPlatform.instance = fakePlatform;

    expect(await newDoasdkPlugin.getPlatformVersion(), '42');
  });
}
