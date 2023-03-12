import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newdoasdk/const_path.dart';
import 'package:newdoasdk/controller/main_controller.dart';
import 'package:newdoasdk/controller/take_ktp_controller.dart';
import 'package:newdoasdk/enum.dart';
import 'package:newdoasdk/style/colors.dart';
import 'package:newdoasdk/style/textstyle.dart';
import 'package:newdoasdk/widget/dashed_rect.dart';
import 'package:newdoasdk/widget/widgets.dart';

class TakeKtp extends StatelessWidget {
  TakeKtp({super.key});
  // ignore: unused_field
  final _controller = Get.put(TakeKtpController());
  @override
  Widget build(BuildContext context) {
    return SAFE_AREA(
        child: SCAFFOLD(
            appBar: APPBAR(
                onPressed: () => Get.back(),
                title: TakeKtpWord.registrasi.text,
                progressData: 3),
            body: GetBuilder<MainController>(builder: (_) {
              return TakeKtpPreview();
            })));
  }
}

class HeaderTakeKtp extends StatelessWidget {
  final TakeKtpController _controller = Get.find();

  HeaderTakeKtp({super.key});

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
                      child: Text.rich(TextSpan(
                          children:
                              _controller.cameraHelperDescriptionWidget))),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TakeKtpPreview extends StatelessWidget {
  final MainController _mController = Get.find();

  TakeKtpPreview({super.key});
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
                  children: [
                    HeaderTakeKtp(),
                    TakeKtpCameraTools(),
                    KtpPreviewWidget(),
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

class KtpPreviewWidget extends StatelessWidget {
  final TakeKtpController _controller = Get.find();

  KtpPreviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          DashedRect(
            color: Colors.white,
            height: _controller.boxHeight,
            width: Get.width,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                    flex: 2,
                    child: DashedRect(height: 30, color: Colors.white)),
                const SizedBox(width: 17),
                DashedRect(
                    width: _controller.boxWidth / 3,
                    height: _controller.boxHeight / 1.5,
                    color: Colors.white),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TakeKtpCameraTools extends StatelessWidget {
  final MainController _mController = Get.find();
  final TakeKtpController _controller = Get.find();
  TakeKtpCameraTools({super.key});

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
                    pathName: "KTP",
                    btnAccTitle: TakeKtpWord.fotoSudahSesuai.text,
                    btnRejectTitle: TakeKtpWord.fotoUlang.text,
                    onAccept: _controller.onAccept(),
                    onReject: _controller.onReject(),
                    onCompleteCamera: _controller.onCompleteCamera(),
                    bottomDialogChild: Expanded(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                            text: TakeKtpWord.pastikanFoto.text,
                            style: textStyleW500(fontSize: 12)),
                        TextSpan(
                            text: TakeKtpWord.sudahSesuai.text,
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
