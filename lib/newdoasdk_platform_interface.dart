import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'newdoasdk_method_channel.dart';

abstract class NewdoasdkPlatform extends PlatformInterface {
  /// Constructs a NewdoasdkPlatform.
  NewdoasdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static NewdoasdkPlatform _instance = MethodChannelNewdoasdk();

  /// The default instance of [NewdoasdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelNewdoasdk].
  static NewdoasdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NewdoasdkPlatform] when
  /// they register themselves.
  static set instance(NewdoasdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
