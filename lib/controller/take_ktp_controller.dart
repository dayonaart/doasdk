import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:doasdk/controller/main_controller.dart';
import 'package:doasdk/enum.dart';
import 'package:doasdk/routes.dart';
import 'package:doasdk/style/colors.dart';
import 'package:doasdk/style/textstyle.dart';

class TakeKtpController extends GetxController {
  final MainController _mController = Get.find();
  String scannedText = "";
  double boxHeight = 248;
  double boxWidth = 365;
  double previewAspectRatio = 0.5;
  GlobalKey camKey = GlobalKey();

  List<TextSpan> get cameraHelperDescriptionWidget {
    return TakeKtpWord.pastikanPosisi.text.split("").map((e) {
      if (RegExp(r'[&]', caseSensitive: true).hasMatch(e)) {
        return TextSpan(
            text: TakeKtpWord.ktpAsli.text,
            style: textStyleW600(fontSize: 12, fontColor: BLUE_TEXT));
      } else {
        return TextSpan(
            text: e, style: textStyleW500(fontSize: 12, fontColor: BLUE_TEXT));
      }
    }).toList();
  }

  void Function()? onAccept() {
    return () async {
      Get.back();
      Get.back();
      Get.back();
      await Get.toNamed(ROUTE.registrationForm.name);
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
          arguments: [TakeKtpWord.registrasi.text, 3]);
    };
  }

  @override
  void onReady() async {
    _mController.startProgressAnim();
    super.onReady();
  }
}
