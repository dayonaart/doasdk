import 'package:get/get.dart';
import 'package:doasdk/controller/main_controller.dart';
import 'package:doasdk/routes.dart';

class TakeNpwpController extends GetxController {
  final MainController _mController = Get.find();

  void Function()? onAccept() {
    return () async {
      Get.back();
      Get.back();
      Get.back();
      await Get.toNamed(ROUTE.photoValidation.name);
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
          arguments: ["Foto NPWP", 10]);
    };
  }

  @override
  void onReady() {
    _mController.startProgressAnim();
    super.onReady();
  }
}
