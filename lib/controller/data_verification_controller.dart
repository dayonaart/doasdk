import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:doasdk/const_path.dart';
import 'package:doasdk/controller/main_controller.dart';
import 'package:doasdk/style/colors.dart';
import 'package:doasdk/style/textstyle.dart';

class DataVerificationController extends GetxController {
  final MainController _mController = Get.find();

  Widget helperDescriptionIcon(int i) {
    switch (i) {
      case 0:
        return ImageIcon(AssetImage(lampAssets), color: BLUE_TEXT);
      case 1:
        return ImageIcon(AssetImage(whatsappAssets), color: BLUE_TEXT);
      case 2:
        return ImageIcon(AssetImage(keyAssets), color: BLUE_TEXT);
      default:
        return Container();
    }
  }

  Widget helperDescription(int i) {
    switch (i) {
      case 0:
        return Text.rich(
          TextSpan(text: "Pastikan Anda ", children: [
            TextSpan(
                text: "memiliki kuota SMS pascabayar / kuota SMS",
                style: textStyleW600(fontColor: BLUE_TEXT))
          ]),
          style: textStyleW500(fontSize: 12, fontColor: BLUE_TEXT),
        );
      case 1:
        return Text.rich(
          TextSpan(
              text: "Untuk metode ",
              style: textStyleW500(fontSize: 12, fontColor: BLUE_TEXT),
              children: [
                TextSpan(
                    text: "Whatsapp, ",
                    style: textStyleW600(fontColor: BLUE_TEXT)),
                const TextSpan(text: "pastikan Anda "),
                TextSpan(
                    text: "terhubung ke jaringan internet.",
                    style: textStyleW600(fontColor: BLUE_TEXT))
              ]),
          style: textStyleW500(fontSize: 12, fontColor: BLUE_TEXT),
        );
      case 2:
        return Text.rich(
            TextSpan(text: "Jaga kerahasiaan OTP .", children: [
              TextSpan(
                  text:
                      "dengan tidak memberitahu kepada siapapun termasuk kepada Petugas Bank",
                  style: textStyleW600(fontColor: BLUE_TEXT))
            ]),
            style: textStyleW500(fontSize: 12, fontColor: BLUE_TEXT));
      default:
        return Container();
    }
  }

  @override
  void onReady() {
    _mController.startProgressAnim();
    super.onReady();
  }
}
