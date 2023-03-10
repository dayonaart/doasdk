import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:doasdk/const_path.dart';
import 'package:doasdk/controller/registration_form_office_branch_controller.dart';
import 'package:doasdk/enum.dart';
import 'package:doasdk/style/colors.dart';
import 'package:doasdk/style/textstyle.dart';
import 'package:doasdk/widget/widgets.dart';

class RegistrationFormOfficeBranch extends StatelessWidget {
  RegistrationFormOfficeBranch({super.key});
  // ignore: unused_field
  final _controller = Get.put(RegistrationFormOfficeBranchController());
  @override
  Widget build(BuildContext context) {
    return SAFE_AREA(
        child: SCAFFOLD(
      appBar: APPBAR(
          onPressed: () => Get.back(), title: "Registrasi", progressData: 6),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RegistrationFormOfficeBranchHeader(),
            RegistrationFormOfficeBranchField(),
            Container(
                margin: const EdgeInsets.only(top: 24, bottom: 16),
                height: 8,
                color: GREY_BACKGROUND),
            RecaptchaForm(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 39, right: 16, left: 16),
        child: Obx(() {
          return BUTTON(
              radiusCircular: 999,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  "Lanjut",
                  style: textStyleW600(fontSize: 16, fontColor: Colors.white),
                ),
              ),
              onPressed: _controller.next());
        }),
      ),
    ));
  }
}

class RecaptchaForm extends StatelessWidget {
  final RegistrationFormOfficeBranchController _controller = Get.find();

  RecaptchaForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Klik centang di bawah untuk melanjutkan ",
              style: textStyleW500(fontSize: 14)),
          const SizedBox(height: 16),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: BLUE_LIGHT,
            elevation: 0,
            margin: const EdgeInsets.all(0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Obx(() {
                      return GestureDetector(
                        onTap: _controller.validationRecaptcha(),
                        child: _controller.validationRecaptchaWidget(),
                      );
                    }),
                    const SizedBox(width: 20),
                    Text("I'm not a robot", style: textStyleW500(fontSize: 16)),
                    const SizedBox(width: 20),
                    Image.asset(recaptchaAssets, height: 80, width: 80)
                  ]),
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

class RegistrationFormOfficeBranchField extends StatelessWidget {
  final RegistrationFormOfficeBranchController _controller = Get.find();

  RegistrationFormOfficeBranchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children:
            List.generate(RegistrationFormOfficeBranchLabel.values.length, (i) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _controller.textEditingLabel(i),
                const SizedBox(height: 8),
                TextFormField(
                    autovalidateMode: AutovalidateMode.always,
                    validator: _controller.onValidateForm(i),
                    onTap: _controller.onFieldTap(i),
                    onChanged: _controller.onChangeForm(i),
                    readOnly: i != 3,
                    controller: _controller.textEditingController(i),
                    decoration: _controller.inputDecoration(i)),
                const SizedBox(height: 16),
              ]);
        }),
      ),
    );
  }
}

class RegistrationFormOfficeBranchHeader extends StatelessWidget {
  const RegistrationFormOfficeBranchHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Pemilihan Kantor Cabang BNI",
              style: textStyleW600(fontSize: 14)),
          const SizedBox(height: 8),
          Card(
            color: BLUE_LIGHT,
            elevation: 0,
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
                        text: "Anda dapat mengambil",
                        style:
                            textStyleW500(fontSize: 12, fontColor: BLUE_TEXT)),
                    TextSpan(
                        text: " kartu debit fisik dan/atau buku tabungan ",
                        style:
                            textStyleW600(fontSize: 12, fontColor: BLUE_TEXT)),
                    TextSpan(
                        text: "pada kantor cabang BNI terdekat.",
                        style:
                            textStyleW500(fontSize: 12, fontColor: BLUE_TEXT))
                  ]))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
