import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:doasdk/const_path.dart';
import 'package:doasdk/controller/data_verification_controller.dart';
import 'package:doasdk/style/colors.dart';
import 'package:doasdk/style/textstyle.dart';
import 'package:doasdk/widget/widgets.dart';

class DataVerification extends StatelessWidget {
  DataVerification({super.key});
  final _controller = Get.put(DataVerificationController());
  @override
  Widget build(BuildContext context) {
    return SAFE_AREA(
      child: SCAFFOLD(
        appBar: APPBAR(
            onPressed: () => Get.back(), title: "Verifikasi", progressData: 12),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(children: [
            const SizedBox(height: 40),
            CircleAvatar(
                radius: 152 / 2,
                backgroundColor: PINK_LIGHT,
                child: Image.asset(phoneHandAssets)),
            const SizedBox(height: 24),
            Text("Verifikasi Nomor +62********8392",
                style: textStyleW600(fontSize: 16)),
            const SizedBox(height: 8),
            Text("Pastikan nomor telepon sudah sesuai untuk mendapatkan OTP.",
                style: textStyleW500(fontSize: 14)),
            const SizedBox(height: 24),
            Card(
              color: BLUE_LIGHT,
              margin: const EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              elevation: 0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 13.25, vertical: 16),
                child: Column(
                  children: List.generate(3, (i) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Row(
                        children: [
                          _controller.helperDescriptionIcon(i),
                          const SizedBox(width: 12),
                          Expanded(child: _controller.helperDescription(i))
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ),
            const SizedBox(height: 119),
            Text.rich(
              TextSpan(children: [
                const TextSpan(text: "Pastikan keamanan akun WhatsApp Anda.\n"),
                TextSpan(
                    text: "Baca lebih lanjut",
                    style: textStyleW600(fontColor: Colors.red)),
                const TextSpan(text: " untuk info keamanan verifikasi.")
              ]),
              style: textStyleW600(fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ]),
        )),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(right: 16, left: 16, bottom: 39),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BUTTON(
                  radiusCircular: 999,
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    child: Row(
                      children: [
                        ImageIcon(AssetImage(whatsappAssets)),
                        const SizedBox(width: 10),
                        Text(
                          "Kirim Melalui Whatapp",
                          style: textStyleW600(
                              fontSize: 14, fontColor: Colors.white),
                        ),
                      ],
                    ),
                  )),
              const SizedBox(height: 16),
              OUTLINE_BUTTON(
                  radiusCircular: 999,
                  onPressed: () async {
                    await DIALOG_HELPER("UNDER DEVELOP");
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    child: Row(
                      children: [
                        ImageIcon(AssetImage(smsAssets), color: ORANGE),
                        const SizedBox(width: 10),
                        Text(
                          "Kirim melalui SMS",
                          style: textStyleW600(fontSize: 14, fontColor: ORANGE),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
