import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:newdoasdk/controller/selfie_and_ktp_verification_controller.dart';
import 'package:newdoasdk/widget/widgets.dart';

class SelfieAndKtpVerification extends StatelessWidget {
  SelfieAndKtpVerification({super.key});
  final _controller = Get.put(SelfieAndKtpVerificationController());
  @override
  Widget build(BuildContext context) {
    return SAFE_AREA(
        child: SCAFFOLD(
            appBar: APPBAR(
                onPressed: () => Get.back(),
                title: "Foto Selfie dengan KTP",
                progressData: 8),
            body: SingleChildScrollView(
              child: Center(
                child: Text("data"),
              ),
            )));
  }
}
