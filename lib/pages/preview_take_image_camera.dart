import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newdoasdk/controller/main_controller.dart';
import 'package:newdoasdk/widget/widgets.dart';

class PreviewTakeImage extends StatelessWidget {
  final MainController _mainController = Get.find();
  final _args = Get.arguments as List<dynamic>;

  PreviewTakeImage({super.key});
  @override
  Widget build(BuildContext context) {
    return SAFE_AREA(
        child: SCAFFOLD(
            appBar: APPBAR(
                onPressed: null, title: _args.first, progressData: _args.last),
            body: Center(
              child: Obx(() {
                if (_mainController.getImagePath(_args.first).isEmpty) {
                  return Container();
                }
                return Image.file(
                    File(_mainController.getImagePath(_args.first).value));
              }),
            )));
  }
}
