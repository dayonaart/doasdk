import 'package:get/get.dart';
import 'package:newdoasdk/controller/main_controller.dart';
import 'package:newdoasdk/routes.dart';

class TakeSignatureController extends GetxController {
  final MainController _mController = Get.find();

  void Function()? onAccept() {
    return () async {
      Get.back();
      Get.back();
      Get.back();
      await Get.toNamed(ROUTE.preTakeNpwp.name);
    };
  }

  void Function()? onReject() {
    return () {
      Get.back();
      Get.back();
    };
  }

  void Function()? onCompleteCamera() {
    return () async {
      await Get.toNamed(ROUTE.previewTakeImage.name,
          arguments: ["Foto Tanda Tangan", 9]);
    };
  }

  @override
  void onReady() {
    _mController.startProgressAnim();
    super.onReady();
  }
}
