import 'package:get/get.dart';
import 'package:newdoasdk/controller/main_controller.dart';

class SelfieAndKtpVerificationController extends GetxController {
  final MainController _mController = Get.find();

  @override
  void onReady() {
    _mController.startProgressAnim();
    super.onReady();
  }
}
