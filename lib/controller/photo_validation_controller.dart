import 'dart:typed_data';

import 'package:get/get.dart';
import 'package:doasdk/controller/main_controller.dart';

class PhotoValidationController extends GetxController {
  final MainController _mController = Get.find();
  Rx<Uint8List?> signatureCrop = Rx(null);
  Rx<Uint8List?> npwpCrop = Rx(null);
  Rx<Uint8List?> selfieFile = Rx(null);

  Future<void> _getcropImage() async {
    signatureCrop.value =
        await _mController.cropImage(_mController.signatureFile.value);
    npwpCrop.value = await _mController.cropImage(_mController.npwpFile.value);
    selfieFile.value = await _mController.selfieFile.value!.readAsBytes();
  }

  void Function()? next() {
    return () async {};
  }

  @override
  void onReady() async {
    _mController.startProgressAnim();
    await _getcropImage();
    super.onReady();
  }
}
