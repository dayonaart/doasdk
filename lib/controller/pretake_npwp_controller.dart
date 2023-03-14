import 'package:get/get.dart';
import 'package:doasdk/controller/main_controller.dart';
import 'package:doasdk/routes.dart';

class PreTakeNpwpController extends GetxController {
  final MainController _mController = Get.find();

  void Function()? next(bool isTake) {
    if (isTake) {
      return () async {
        try {
          await _mController.initCameraController(_mController.cameras.first);
          await Get.toNamed(ROUTE.takeNpwp.name);
        } catch (e) {
          await Get.toNamed(ROUTE.takeNpwp.name);
        }
      };
    } else {
      return () async {
        await Get.toNamed(ROUTE.photoValidation.name);
      };
    }
  }

  @override
  void onReady() {
    _mController.startProgressAnim();
    super.onReady();
  }
}
