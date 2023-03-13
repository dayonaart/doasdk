import 'dart:io';
import 'dart:math';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newdoasdk/widget/widgets.dart';
import 'package:image/image.dart' as img;

class MainController extends GetxController
    with GetSingleTickerProviderStateMixin, WidgetsBindingObserver {
  late List<CameraDescription> cameras;
  late CameraController? camController;
  bool isCameraReady = false;
  late AnimationController progresscontroller;
  RxDouble progress = 0.0.obs;
  final RxString _ktpFilePath = RxString("");
  final RxString _selfieKtpPath = RxString("");
  final RxString _signatureFilePath = RxString("");
  final RxString _npwpFilePath = RxString("");
  RxMap inputNumberData = RxMap();
  RxMap privateFormData = RxMap();
  RxMap jobDetailFormData = RxMap();
  RxMap ktpData = RxMap();

  RxString getImagePath(String pathName) {
    if (pathName.contains("Registrasi")) {
      return _ktpFilePath;
    } else if (pathName.contains("Foto Selfie")) {
      return _selfieKtpPath;
    } else if (pathName.contains("Tanda Tangan")) {
      return _signatureFilePath;
    } else if (pathName.contains("NPWP")) {
      return _npwpFilePath;
    } else {
      return "".obs;
    }
  }

  void setInputNumberData(Map<String, dynamic> data) {
    inputNumberData.value = data;
  }

  void setImageFilePath(String path, String pathName) {
    switch (pathName) {
      case "KTP":
        _ktpFilePath.value = path;
        break;
      case "SELFIE_KTP":
        _selfieKtpPath.value = path;
        break;
      case "SIGNATURE":
        _signatureFilePath.value = path;
        break;
      case "NPWP":
        _npwpFilePath.value = path;
        break;
      default:
    }
  }

  void setKtpData(Map<String, dynamic> data) {
    ktpData.value = data;
  }

  void setPrivateFormData(Map<String, dynamic> data) {
    privateFormData.value = data;
  }

  void setJobDetailFormData(Map<String, dynamic> data) {
    jobDetailFormData.value = data;
  }

  Future<void> initCameraController(CameraDescription description) async {
    camController = CameraController(description, ResolutionPreset.high);

    await camController?.initialize().then((_) async {
      isCameraReady = (camController != null);
      if (isCameraReady) {
        camController!.setFlashMode(FlashMode.off);
      }
      update();
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            DIALOG_HELPER("CameraAccessDenied");
            break;
          default:
            DIALOG_HELPER("errors $e");
            break;
        }
      }
    });
  }

  void Function() changeCameraDirection() {
    return () async {
      final lensDirection = camController?.description.lensDirection;
      CameraDescription newDescription;
      if (lensDirection == CameraLensDirection.front) {
        newDescription = cameras.firstWhere((description) =>
            description.lensDirection == CameraLensDirection.back);
      } else {
        newDescription = cameras.firstWhere((description) =>
            description.lensDirection == CameraLensDirection.front);
      }
      await initCameraController(newDescription);
    };
  }

  /// path name
  ///
  /// 1.KTP
  ///
  /// 2.SELFIE_KTP
  ///
  /// 3.SIGNATURE
  ///
  /// 4.NPWP
  void Function() takePicture({
    @required String? btnAccTitle,
    @required String? btnRejectTitle,
    @required void Function()? onAccept,
    @required void Function()? onReject,
    @required void Function()? onCompleteCamera,
    @required Widget? bottomDialogChild,
    @required String? pathName,
  }) {
    return () async {
      try {
        var _xFile = await camController?.takePicture();
        if (_xFile != null) {
          if (pathName != "Foto Selfie") {
            await cropImage(_xFile.path, isKtp: pathName == "KTP");
          }
          setImageFilePath(_xFile.path, pathName!);
          onCompleteCamera?.call();
          await Future.delayed(const Duration(milliseconds: 500));

          await BOTTOM_DIALOG_CONFIRMATION(
              btnAccTitle: btnAccTitle,
              btnRejectTitle: btnRejectTitle,
              topTitle: bottomDialogChild,
              onAccept: () async {
                await camController?.dispose();
                onAccept?.call();
              },
              onReject: onReject);
        } else {
          return;
        }
      } catch (e) {
        DIALOG_HELPER("$e");
      }
    };
  }

  Future<File> cropImage(
    String path, {
    bool isKtp = false,
  }) async {
    var bytes = await File(path).readAsBytes();
    img.Image? src = img.decodeImage(bytes);

    var cropSize = min(src!.width, src.height);
    int offsetX = (src.width - min(src.width, src.height)) ~/ 2;
    int offsetY = (src.height - min(src.width, src.height)) ~/ 3.5;
    var _img = img.copyCrop(src,
        x: offsetX,
        y: offsetY,
        width: cropSize,
        height: cropSize ~/ (isKtp ? 1.5 : 1.2));
    var jpg = img.encodeJpg(_img);
    return await File(path).writeAsBytes(jpg);
  }

  void startProgressAnim() {
    if (progresscontroller.status == AnimationStatus.completed) {
      progresscontroller.reset();
      progresscontroller.forward();
      return;
    }
    progresscontroller.forward();
  }

  void disposeAnime() {
    progresscontroller.dispose();
  }

  @override
  void onInit() async {
    WidgetsFlutterBinding.ensureInitialized();
    progresscontroller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..addListener(() {
        progress.value = progresscontroller.value;
      });
    super.onInit();
  }

  @override
  void onReady() async {
    cameras = await availableCameras();
    await initCameraController(cameras.first);
    super.onReady();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final CameraController? cameraController = camController;
    if (cameraController == null || !cameraController.value.isInitialized) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      cameraController.dispose();
    } else if (state == AppLifecycleState.resumed) {
      onNewCameraSelected(cameraController.description);
    }
    super.didChangeAppLifecycleState(state);
  }

  Future<void> onNewCameraSelected(CameraDescription cameraDescription) async {
    final CameraController? oldController = camController;
    if (oldController != null) {
      camController = null;
      await oldController.dispose();
    }

    final CameraController cameraController = CameraController(
      cameraDescription,
      ResolutionPreset.low,
      enableAudio: true,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );

    camController = cameraController;
    cameraController.addListener(() {
      if (cameraController.value.hasError) {
        DIALOG_HELPER(
            'Camera error ${cameraController.value.errorDescription}');
      }
    });

    try {
      await cameraController.initialize();
    } on CameraException catch (e) {
      switch (e.code) {
        case 'CameraAccessDenied':
          DIALOG_HELPER('You have denied camera access.');
          break;
        case 'CameraAccessDeniedWithoutPrompt':
          // iOS only
          DIALOG_HELPER('Please go to Settings app to enable camera access.');
          break;
        case 'CameraAccessRestricted':
          // iOS only
          DIALOG_HELPER('Camera access is restricted.');
          break;
        case 'AudioAccessDenied':
          DIALOG_HELPER('You have denied audio access.');
          break;
        case 'AudioAccessDeniedWithoutPrompt':
          // iOS only
          DIALOG_HELPER('Please go to Settings app to enable audio access.');
          break;
        case 'AudioAccessRestricted':
          // iOS only
          DIALOG_HELPER('Audio access is restricted.');
          break;
        default:
          DIALOG_HELPER('CAMERA EXCEPTION $e');

          break;
      }
    }
  }
}
