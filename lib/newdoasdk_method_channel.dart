import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'newdoasdk_platform_interface.dart';

/// An implementation of [NewdoasdkPlatform] that uses method channels.
class MethodChannelNewdoasdk extends NewdoasdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('newdoasdk');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
