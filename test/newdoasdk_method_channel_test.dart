import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:newdoasdk/newdoasdk_method_channel.dart';

void main() {
  MethodChannelNewDoaSdk platform = MethodChannelNewDoaSdk();
  const MethodChannel channel = MethodChannel('newdoasdk');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
