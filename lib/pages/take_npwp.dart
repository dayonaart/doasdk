import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:doasdk/const_path.dart';
import 'package:doasdk/controller/main_controller.dart';
import 'package:doasdk/controller/take_npwp_controller.dart';
import 'package:doasdk/style/colors.dart';
import 'package:doasdk/style/textstyle.dart';
import 'package:doasdk/widget/widgets.dart';

class TakeNpwp extends StatelessWidget {
  TakeNpwp({super.key});
  final _controller = Get.put(TakeNpwpController());
  @override
  Widget build(BuildContext context) {
    return SAFE_AREA(
        child: SCAFFOLD(
            appBar: APPBAR(
                onPressed: () => Get.back(),
                title: "Foto NPWP",
                progressData: 10),
            body: GetBuilder<MainController>(builder: (_) {
              return TakeCameraNpwpPreview();
            })));
  }
}

class HeaderTakeNpwp extends StatelessWidget {
  final TakeNpwpController _controller = Get.find();

  HeaderTakeNpwp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            color: BLUE_LIGHT,
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageIcon(AssetImage(iAssets), color: BLUE_TEXT),
                  const SizedBox(width: 9.67),
                  Expanded(
                      child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: "Pastikan",
                        style:
                            textStyleW500(fontSize: 12, fontColor: BLUE_TEXT)),
                    TextSpan(
                        text: " posisi NPWP asli pada area yang tersedia ",
                        style:
                            textStyleW600(fontSize: 12, fontColor: BLUE_TEXT)),
                    TextSpan(
                        text:
                            "dan klik ambil foto. Pastikan foto terlihat dengan jelas. ",
                        style:
                            textStyleW500(fontSize: 12, fontColor: BLUE_TEXT))
                  ]))),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TakeCameraNpwpPreview extends StatelessWidget {
  final MainController _mController = Get.find();

  TakeCameraNpwpPreview({super.key});
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      if (_mController.isCameraReady) {
        return Column(
          children: [
            Expanded(
                child: CameraPreview(
              _mController.camController!,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  SizedBox(
                    height: Get.height,
                    width: Get.width,
                    child: Image.asset(
                      cameraBackgroundAssets,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: HeaderTakeNpwp(),
                  ),
                  NpwpCameraTools(),
                ],
              ),
            )),
          ],
        );
      } else {
        return Container();
      }
    });
  }
}

class NpwpCameraTools extends StatelessWidget {
  final MainController _mController = Get.find();
  final TakeNpwpController _controller = Get.find();
  NpwpCameraTools({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 71),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(width: 10),
            SizedBox(
              height: 72,
              width: 72,
              child: GestureDetector(
                onTap: _mController.takePicture(
                    fileName: "NPWP",
                    btnAccTitle: "Foto sudah sesuai",
                    btnRejectTitle: "Foto Ulang",
                    onAccept: _controller.onAccept(),
                    onReject: _controller.onReject(),
                    onCompleteCamera: _controller.onCompleteCamera(),
                    bottomDialogChild: Expanded(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                            text: "Pastikan foto yang anda ambil ",
                            style: textStyleW500(fontSize: 12)),
                        TextSpan(
                            text: "sudah sesuai dan sudah fokus (tidak blur).",
                            style: textStyleW600(fontSize: 12))
                      ])),
                    )),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image.asset(
                    takeCameraButtonAssets,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 33.33,
              width: 33.33,
              child: GestureDetector(
                onTap: _mController.changeCameraDirection(),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image.asset(
                    flipCameraButtonAssets,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
