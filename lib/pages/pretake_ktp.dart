// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:doasdk/const_path.dart';
import 'package:doasdk/controller/pretake_ktp_controller.dart';
import 'package:doasdk/enum.dart';
import 'package:doasdk/style/colors.dart';
import 'package:doasdk/style/textstyle.dart';
import 'package:doasdk/widget/widgets.dart';

class PreTakeKtp extends StatelessWidget {
  PreTakeKtp({super.key});
  // ignore: unused_field
  final _controller = Get.put(PreTakeKtpController());
  @override
  Widget build(BuildContext context) {
    return SAFE_AREA(
        child: SCAFFOLD(
            appBar: APPBAR(
                onPressed: () => Get.back(),
                title: PreTakeKtpWord.registrasi.text,
                progressData: 3),
            body: PreTakeKtpBody(),
            bottomNavigationBar: KtpRegistrationButton()));
  }
}

class KtpRegistrationButton extends StatelessWidget {
  final PreTakeKtpController _controller = Get.find();

  KtpRegistrationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 39),
      child: BUTTON(
          radiusCircular: 999,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              PreTakeKtpWord.lanjut.text,
              style: textStyleW600(fontSize: 16, fontColor: Colors.white),
            ),
          ),
          onPressed: _controller.next()),
    );
  }
}

class PreTakeKtpBody extends StatelessWidget {
  PreTakeKtpBody({super.key});
  final PreTakeKtpController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 40),
          CircleAvatar(
              backgroundColor: PINK_LIGHT,
              radius: 80,
              child: Image.asset(ktpAssets)),
          const SizedBox(height: 24),
          Text(PreTakeKtpWord.verifikasieKTP.text,
              style: textStyleW600(fontSize: 16)),
          const SizedBox(height: 8),
          Text(PreTakeKtpWord.prosesIniBertujuan.text,
              style: textStyleW500(fontSize: 14), textAlign: TextAlign.center),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              color: BLUE_LIGHT,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              elevation: 0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 13.25, vertical: 16),
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Image.asset(lampAssets),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(PreTakeKtpWord.pastikanHasilFoto.text,
                            style: textStyleW600(
                                fontSize: 12, fontColor: BLUE_TEXT)),
                      )
                    ]),
                    const SizedBox(height: 8),
                    Text.rich(TextSpan(
                        children: _controller.requirementDescriptionWidget)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
