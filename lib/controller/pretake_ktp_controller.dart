import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:doasdk/controller/main_controller.dart';
import 'package:doasdk/enum.dart';
import 'package:doasdk/routes.dart';
import 'package:doasdk/style/colors.dart';
import 'package:doasdk/style/textstyle.dart';

class PreTakeKtpController extends GetxController {
  RxBool isTakePicture = false.obs;
  final MainController _mController = Get.find();

  String requirementDescription = PreTakeKtpWord.sesuaiDenganIdentitasAnda.text;

  List<TextSpan> get requirementDescriptionWidget {
    return requirementDescription.split("").map((e) {
      if (RegExp(r'[*]', caseSensitive: true).hasMatch(e)) {
        return TextSpan(
            text: "KTP",
            style: textStyleW500(fontSize: 12, fontColor: BLUE_TEXT));
      }
      return TextSpan(
          text: e, style: textStyleW600(fontSize: 12, fontColor: BLUE_TEXT));
    }).toList();
  }

  void Function() next() {
    return () async {
      try {
        await _mController.initCameraController(_mController.cameras.first);
        await Get.toNamed(ROUTE.takeKtp.name);
      } catch (e) {
        await Get.toNamed(ROUTE.takeKtp.name);
      }
    };
  }

  @override
  void onReady() {
    _mController.startProgressAnim();
    super.onReady();
  }
}
