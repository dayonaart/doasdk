import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:doasdk/const_path.dart';
import 'package:doasdk/controller/pretake_signature_controller.dart';
import 'package:doasdk/style/colors.dart';
import 'package:doasdk/style/textstyle.dart';
import 'package:doasdk/widget/widgets.dart';

class PreTakeSignature extends StatelessWidget {
  PreTakeSignature({super.key});
  final _controller = Get.put(PreTakeSignatureController());
  @override
  Widget build(BuildContext context) {
    return SAFE_AREA(
        child: SCAFFOLD(
            appBar: APPBAR(
                onPressed: () => Get.back(),
                title: "Foto Tanda Tangan",
                progressData: 9),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const PreTakeSignatureBody(),
                  const SizedBox(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 39),
                    child: BUTTON(
                        radiusCircular: 999,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "Ambil Foto",
                            style: textStyleW600(
                                fontColor: Colors.white, fontSize: 16),
                          ),
                        ),
                        onPressed: _controller.next()),
                  )
                ],
              ),
            )));
  }
}

class PreTakeSignatureBody extends StatelessWidget {
  const PreTakeSignatureBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(children: [
          const SizedBox(height: 40),
          CircleAvatar(
              radius: 152 / 2,
              backgroundColor: PINK_LIGHT,
              child: Image.asset(signatureAssets))
        ]),
        const SizedBox(height: 24),
        Column(children: [
          Text("Foto Tanda Tangan", style: textStyleW600(fontSize: 16)),
          const SizedBox(height: 8),
          Text(
            "Foto ini diperlukan untuk dapat melengkapi dokumen pembukaan rekening.",
            style: textStyleW500(fontSize: 14),
            textAlign: TextAlign.center,
          )
        ]),
        const SizedBox(height: 40),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 0,
          color: BLUE_LIGHT,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16, horizontal: 13.25),
            child: Row(
              children: [
                ImageIcon(AssetImage(iAssets), color: BLUE_TEXT),
                const SizedBox(width: 12),
                Expanded(
                    child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "Buat tanda tangan Anda pada ",
                      style: textStyleW500(fontSize: 12, fontColor: BLUE_TEXT)),
                  TextSpan(
                      text:
                          "kertas putih dan terlihat dengan jelas (tidak blur).",
                      style: textStyleW600(fontSize: 12, fontColor: BLUE_TEXT))
                ])))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
