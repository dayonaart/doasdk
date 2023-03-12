import 'package:get/get.dart';
import 'package:newdoasdk/controller/main_controller.dart';
import 'package:newdoasdk/routes.dart';

class PreTakeSignatureController extends GetxController {
  final MainController _mController = Get.find();

  void Function()? next() {
    return () async {
      try {
        await _mController.initCameraController(_mController.cameras.first);
        await Get.toNamed(ROUTE.takeSignature.name);
      } catch (e) {
        await Get.toNamed(ROUTE.takeSignature.name);
      }
    };
  }

  @override
  void onReady() {
    _mController.startProgressAnim();
    super.onReady();
  }
}
