import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:doasdk/controller/main_controller.dart';
import 'package:doasdk/style/colors.dart';
import 'package:doasdk/widget/widgets.dart';

class PreviewTakeImage extends StatelessWidget {
  final MainController _mainController = Get.find();
  final _args = Get.arguments as List<dynamic>;

  PreviewTakeImage({super.key});
  @override
  Widget build(BuildContext context) {
    return SAFE_AREA(
        child: SCAFFOLD(
      backgroundColor: BLUE_LIGHT,
      appBar:
          APPBAR(onPressed: null, title: _args.first, progressData: _args.last),
      body: Obx(() {
        return Image.file(_previewImage.value!);
      }),
    ));
  }

  Rx<File?> get _previewImage {
    switch (_args.first) {
      case "Registrasi":
        return _mainController.ktpFile;
      case "Foto Selfie dengan KTP":
        return _mainController.selfieFile;
      case "Foto Tanda Tangan":
        return _mainController.signatureFile;
      case "Foto NPWP":
        return _mainController.npwpFile;
      default:
        return Rx(null);
    }
  }
}
