import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newdoasdk/const_path.dart';
import 'package:newdoasdk/controller/face_and_selfie_verification_controller.dart';
import 'package:newdoasdk/style/colors.dart';
import 'package:newdoasdk/style/textstyle.dart';
import 'package:newdoasdk/widget/widgets.dart';

class FaceAndAndSelfieVerication extends StatelessWidget {
  FaceAndAndSelfieVerication({super.key});
  final _controller = Get.put(FaceAndSelfieVericationController());
  @override
  Widget build(BuildContext context) {
    return SAFE_AREA(
        child: SCAFFOLD(
            appBar: APPBAR(
                onPressed: () => Get.back(),
                title: "Verifikasi Wajah & Selfie",
                progressData: 7),
            body: SingleChildScrollView(
              child: Column(
                children: const [
                  FaceAndSelfieVerificationHeader(),
                ],
              ),
            ),
            bottomNavigationBar: Padding(
                padding: const EdgeInsets.only(
                    top: 59, bottom: 39, right: 16, left: 16),
                child: BUTTON(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        "Lanjut",
                        style: textStyleW600(fontColor: Colors.white),
                      ),
                    ),
                    onPressed: _controller.startZoloz(),
                    radiusCircular: 999))));
  }
}

class FaceAndSelfieVerificationHeader extends StatelessWidget {
  const FaceAndSelfieVerificationHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 29.25),
      child: Column(
        children: [
          const SizedBox(height: 40),
          Container(
              height: 152,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(takeFaceAndSelfieAssets)))),
          const SizedBox(height: 24),
          Text("Verifikasi Wajah dan Selfie dengan KTP",
              style: textStyleW600(fontSize: 16)),
          const SizedBox(height: 8),
          Text(
              "Proses ini bertujuan untuk mempermudah melakukan validasi data Anda.",
              style: textStyleW500(fontSize: 14),
              textAlign: TextAlign.center),
          Card(
            color: BLUE_LIGHT,
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 13.25, vertical: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageIcon(AssetImage(lampAssets), color: BLUE_TEXT),
                  const SizedBox(width: 12),
                  Expanded(
                      child: Text.rich(
                    TextSpan(
                        children: [
                          TextSpan(
                              text:
                                  "Pastikan wajah dan e-KTP terlihat jelas dengan melakukan hal sebagai berikut:\n",
                              style: textStyleW600()),
                          const TextSpan(text: "• Berada pada ruangan dengan"),
                          TextSpan(
                              text: " pencahayaan cukup\n",
                              style: textStyleW600()),
                          const TextSpan(
                              text:
                                  "• Lepaskan aksesoris yang menutupi wajah "),
                          TextSpan(
                              text: "(kacamata, masker, topi, dll.)\n",
                              style: textStyleW600()),
                          const TextSpan(
                              text: "• Pastikan foto yang anda ambil"),
                          TextSpan(
                              text: " sudah fokus (tidak blur)",
                              style: textStyleW600()),
                        ],
                        style:
                            textStyleW500(fontSize: 12, fontColor: BLUE_TEXT)),
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
