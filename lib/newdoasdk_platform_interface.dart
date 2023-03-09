import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'newdoasdk_method_channel.dart';

abstract class NewDoaSdkPlatform extends PlatformInterface {
  /// Constructs a NewdoasdkPlatform.
  NewDoaSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static NewDoaSdkPlatform _instance = MethodChannelNewDoaSdk();

  /// The default instance of [NewDoaSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelNewDoaSdk].
  static NewDoaSdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NewDoaSdkPlatform] when
  /// they register themselves.
  static set instance(NewDoaSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
