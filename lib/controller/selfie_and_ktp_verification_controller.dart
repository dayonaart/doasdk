import 'package:get/get.dart';
import 'package:newdoasdk/controller/main_controller.dart';
import 'package:newdoasdk/routes.dart';

class SelfieAndKtpController extends GetxController {
  final MainController _mController = Get.find();
  double faceRectHeight = 310.15;
  double faceRectWidth = 210.89;
  double boxHeight = 248;
  double boxWidth = 210;
  void Function()? onAccept() {
    return () async {
      Get.back();
      Get.back();
      Get.back();
      await Get.toNamed(ROUTE.preTakeSignature.name);
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
          arguments: ["Foto Selfie dengan KTP", 8]);
    };
  }

  @override
  void onReady() {
    _mController.startProgressAnim();
    super.onReady();
  }
}