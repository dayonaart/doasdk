import 'package:get/get.dart';
import 'package:newdoasdk/controller/main_controller.dart';

class PhotoValidationController extends GetxController {
  final MainController _mController = Get.find();

  void Function()? next() {
    return () async {};
  }

  @override
  void onReady() {
    _mController.startProgressAnim();
    super.onReady();
  }
}
