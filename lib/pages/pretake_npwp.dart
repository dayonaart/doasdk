import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newdoasdk/const_path.dart';
import 'package:newdoasdk/controller/pretake_npwp_controller.dart';
import 'package:newdoasdk/style/colors.dart';
import 'package:newdoasdk/style/textstyle.dart';
import 'package:newdoasdk/widget/widgets.dart';

class PreTakeNpwp extends StatelessWidget {
  PreTakeNpwp({super.key});
  final _controller = Get.put(PreTakeNpwpController());
  @override
  Widget build(BuildContext context) {
    return SAFE_AREA(
        child: SCAFFOLD(
            appBar: APPBAR(
                onPressed: () => Get.back(),
                title: "Foto NPWP",
                progressData: 10),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const PreTakeNpwpBody(),
                  const SizedBox(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 39),
                    child: Column(
                      children: [
                        BUTTON(
                            radiusCircular: 999,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              child: Text(
                                "Ambil Foto",
                                style: textStyleW600(
                                    fontColor: Colors.white, fontSize: 16),
                              ),
                            ),
                            onPressed: _controller.next(true)),
                        const SizedBox(height: 16),
                        OUTLINE_BUTTON(
                            radiusCircular: 999,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              child: Text(
                                "Upload Foto Nanti",
                                style: textStyleW600(
                                    fontColor: ORANGE, fontSize: 16),
                              ),
                            ),
                            onPressed: _controller.next(false))
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}

class PreTakeNpwpBody extends StatelessWidget {
  const PreTakeNpwpBody({
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
              child: Image.asset(npwpAssets))
        ]),
        const SizedBox(height: 24),
        Column(children: [
          Text("Foto NPWP (Opsional)", style: textStyleW600(fontSize: 16)),
          const SizedBox(height: 8),
          Text(
            "Anda dapat melewati proses ini apabila belum memiliki NPWP. Foto ini diperlukan untuk dapat melengkapi dokumen perpajakan.",
            style: textStyleW500(fontSize: 14),
            textAlign: TextAlign.center,
          )
        ]),
      ],
    );
  }
}
