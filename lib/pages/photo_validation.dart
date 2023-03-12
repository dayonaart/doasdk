import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:newdoasdk/const_path.dart';
import 'package:newdoasdk/controller/main_controller.dart';
import 'package:newdoasdk/controller/photo_validation_controller.dart';
import 'package:newdoasdk/style/colors.dart';
import 'package:newdoasdk/style/textstyle.dart';
import 'package:newdoasdk/widget/widgets.dart';

class PhotoValidation extends StatelessWidget {
  PhotoValidation({super.key});
  final _controller = Get.put(PhotoValidationController());
  final MainController _mController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SAFE_AREA(
        child: SCAFFOLD(
            appBar: APPBAR(
                onPressed: () => Get.back(),
                title: "Validasi Foto",
                progressData: 11),
            body: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const PhotoValidationHeader(),
                  const SizedBox(height: 16),
                  FileViewer("Foto Selfie dengan KTP",
                      _mController.getImagePath("Foto Selfie").value, () {}),
                  const SizedBox(height: 32),
                  Row(
                    children: List.generate(2, (i) {
                      return Expanded(
                        child: FileViewer(
                            i == 0 ? "Tanda Tangan" : "NPWP (Opsional)",
                            i == 1
                                ? _mController
                                    .getImagePath("Tanda Tangan")
                                    .value
                                : _mController.getImagePath("NPWP").value,
                            boxHeight: 128,
                            () {}),
                      );
                    }),
                  ),
                ],
              ),
            )),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 39),
              child: BUTTON(
                  radiusCircular: 999,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      "Lanjut",
                      style:
                          textStyleW600(fontSize: 16, fontColor: Colors.white),
                    ),
                  ),
                  onPressed: _controller.next()),
            )));
  }
}

class FileViewer extends StatelessWidget {
  final String? title;
  final String? imagePath;
  final double boxHeight;
  final void Function()? onChange;

  const FileViewer(
    this.title,
    this.imagePath,
    this.onChange, {
    super.key,
    this.boxHeight = 200,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title!, style: textStyleW600(fontSize: 14)),
        Center(
          child: Column(
            children: [
              const SizedBox(height: 21.38),
              ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.file(File(imagePath!),
                      height: boxHeight, width: 181, fit: BoxFit.cover)),
              const SizedBox(height: 16),
              OUTLINE_BUTTON(
                  radiusCircular: 999,
                  mainAxisSize: MainAxisSize.min,
                  child: Row(
                    children: [
                      ImageIcon(AssetImage(penAssets), color: ORANGE),
                      const SizedBox(width: 6.27),
                      Text(
                        "Ubah",
                        style: textStyleW500(fontSize: 14, fontColor: ORANGE),
                      )
                    ],
                  ),
                  onPressed: () {})
            ],
          ),
        ),
      ],
    );
  }
}

class PhotoValidationHeader extends StatelessWidget {
  const PhotoValidationHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          color: BLUE_LIGHT,
          elevation: 0,
          margin: const EdgeInsets.all(0),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16, horizontal: 13.67),
            child: Row(
              children: [
                ImageIcon(AssetImage(iAssets), color: BLUE_TEXT),
                const SizedBox(width: 13.67),
                Expanded(
                    child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "Pastikan foto yang anda ambil ",
                      style: textStyleW500(fontSize: 12, fontColor: BLUE_TEXT)),
                  TextSpan(
                      text: "sudah sesuai dan sudah fokus (tidak blur).",
                      style: textStyleW600(fontSize: 12, fontColor: BLUE_TEXT)),
                ]))),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
