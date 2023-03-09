import 'package:flutter_test/flutter_test.dart';
import 'package:newdoasdk/newdoasdk.dart';
import 'package:newdoasdk/newdoasdk_platform_interface.dart';
import 'package:newdoasdk/newdoasdk_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNewdoasdkPlatform
    with MockPlatformInterfaceMixin
    implements NewDoaSdkPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final NewDoaSdkPlatform initialPlatform = NewDoaSdkPlatform.instance;

  test('$MethodChannelNewDoaSdk is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNewDoaSdk>());
  });
  NewDoaSdk newDoasdkPlugin = NewDoaSdk();
  MockNewdoasdkPlatform fakePlatform = MockNewdoasdkPlatform();
  NewDoaSdkPlatform.instance = fakePlatform;

  test('getPlatformVersion', () async {
    expect(await newDoasdkPlugin.getPlatformVersion(), '42');
  });
}
