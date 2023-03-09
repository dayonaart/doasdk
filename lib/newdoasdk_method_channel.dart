import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'newdoasdk_platform_interface.dart';

/// An implementation of [NewDoaSdkPlatform] that uses method channels.
class MethodChannelNewDoaSdk extends NewDoaSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('newdoasdk');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
