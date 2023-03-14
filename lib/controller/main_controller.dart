import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:doasdk/utils.dart';
import 'package:doasdk/widget/widgets.dart';
import 'package:image/image.dart' as img;

class MainController extends GetxController
    with GetSingleTickerProviderStateMixin, WidgetsBindingObserver {
  late List<CameraDescription> cameras;
  late CameraController? camController;
  bool isCameraReady = false;
  late AnimationController progresscontroller;
  RxDouble progress = 0.0.obs;
  RxMap inputNumberData = RxMap();
  RxMap privateFormData = RxMap();
  RxMap jobDetailFormData = RxMap();
  RxMap ktpData = RxMap();
  Rx<File?> ktpFile = Rx(null);
  Rx<File?> selfieFile = Rx(null);
  Rx<File?> signatureFile = Rx(null);
  Rx<File?> npwpFile = Rx(null);
  Future<void> _setImagePath(String fileName, File file) async {
    if (fileName == "KTP") {
      ktpFile.value = file;
    } else if (fileName == "SELFIE_KTP") {
      selfieFile.value = file;
    } else if (fileName == "SIGNATURE") {
      signatureFile.value = file;
    } else if (fileName == "NPWP") {
      npwpFile.value = file;
    } else {
      return;
    }
  }

  void setInputNumberData(Map<String, dynamic> data) {
    inputNumberData.value = data;
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

  /// file name
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
    @required String? fileName,
  }) {
    assert(fileName != null);
    return () async {
      try {
        var _xFile = await camController?.takePicture();
        if (_xFile != null) {
          await _setImagePath(fileName!, File(_xFile.path));
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

  Future<Uint8List?> cropImage(
    File? file, {
    bool isKtp = false,
  }) async {
    try {
      var _bytes = await file!.readAsBytes();
      img.Image? _src = img.decodeImage(_bytes);
      var cropSize = min(_src!.width, _src.height);
      int offsetX = (_src.width - min(_src.width, _src.height)) ~/ 2;
      int offsetY = (_src.height - min(_src.width, _src.height)) ~/ 3.5;
      var _img = img.copyCrop(_src,
          x: offsetX,
          y: offsetY,
          width: cropSize,
          height: cropSize ~/ (isKtp ? 1.5 : 1.2));
      return img.encodeJpg(_img);
    } catch (e) {
      return null;
    }
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
