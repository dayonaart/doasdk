import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:doasdk/const_path.dart';
import 'package:doasdk/controller/main_controller.dart';
import 'package:doasdk/controller/selfie_and_ktp_verification_controller.dart';
import 'package:doasdk/enum.dart';
import 'package:doasdk/style/colors.dart';
import 'package:doasdk/style/textstyle.dart';
import 'package:doasdk/widget/dashed_rect.dart';
import 'package:doasdk/widget/ktp_face_rect.dart';
import 'package:doasdk/widget/widgets.dart';

class SelfieAndKtp extends StatelessWidget {
  SelfieAndKtp({super.key});
  final _controller = Get.put(SelfieAndKtpController());
  @override
  Widget build(BuildContext context) {
    return SAFE_AREA(
        child: SCAFFOLD(
            appBar: APPBAR(
                onPressed: () => Get.back(),
                title: "Foto Selfie dengan KTP",
                progressData: 8),
            body: GetBuilder<MainController>(builder: (_) {
              return TakeCameraSelfieAndKtpPreview();
            })));
  }
}

class HeaderTakeSelfieAndKtp extends StatelessWidget {
  final SelfieAndKtpController _controller = Get.find();

  HeaderTakeSelfieAndKtp({super.key});

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
                        text: TakeSelfieAndKtpWord.pastikan.text,
                        style:
                            textStyleW500(fontSize: 12, fontColor: BLUE_TEXT)),
                    TextSpan(
                        text: TakeSelfieAndKtpWord.wajahDanKtp.text,
                        style:
                            textStyleW600(fontSize: 12, fontColor: BLUE_TEXT)),
                    TextSpan(
                        text: TakeSelfieAndKtpWord.danAmbilFoto.text,
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

class TakeCameraSelfieAndKtpPreview extends StatelessWidget {
  final MainController _mController = Get.find();

  TakeCameraSelfieAndKtpPreview({super.key});
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      if (_mController.isCameraReady) {
        return Column(
          children: [
            Expanded(
                child: CameraPreview(
              _mController.camController!,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Column(
                      children: [
                        HeaderTakeSelfieAndKtp(),
                        const SizedBox(height: 26),
                        SelfieAndaKtpPreviewWidget(),
                      ],
                    ),
                    SelfieAndKtpCameraTools(),
                  ],
                ),
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

class SelfieAndaKtpPreviewWidget extends StatelessWidget {
  final SelfieAndKtpController _controller = Get.find();

  SelfieAndaKtpPreviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FaceRect(
          height: Get.height / 5.5,
          width: Get.height / 5.5,
        ),
        const SizedBox(height: 23),
        DashedRect(
          color: Colors.white,
          height: Get.height / 5.5,
          width: Get.width / 1.5,
        ),
      ],
    );
  }
}

class SelfieAndKtpCameraTools extends StatelessWidget {
  final MainController _mController = Get.find();
  final SelfieAndKtpController _controller = Get.find();
  SelfieAndKtpCameraTools({super.key});

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
                    fileName: "SELFIE_KTP",
                    btnAccTitle: TakeSelfieAndKtpWord.fotoSudahSesuai.text,
                    btnRejectTitle: TakeSelfieAndKtpWord.fotoUlang.text,
                    onAccept: _controller.onAccept(),
                    onReject: _controller.onReject(),
                    onCompleteCamera: _controller.onCompleteCamera(),
                    bottomDialogChild: Expanded(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                            text: TakeSelfieAndKtpWord.pastikanFoto.text,
                            style: textStyleW500(fontSize: 12)),
                        TextSpan(
                            text: TakeSelfieAndKtpWord.sudahSesuai.text,
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
