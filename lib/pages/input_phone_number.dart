import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:doasdk/const_path.dart';
import 'package:doasdk/controller/input_phone_number_controller.dart';
import 'package:doasdk/enum.dart';
import 'package:doasdk/style/colors.dart';
import 'package:doasdk/style/textstyle.dart';
import 'dart:math' as math;

import 'package:doasdk/widget/widgets.dart';

class InputPhoneNumber extends StatelessWidget {
  InputPhoneNumber({super.key});
  // ignore: unused_field
  final _controller = Get.put(InputPhoneNumberController());
  @override
  Widget build(BuildContext context) {
    return SAFE_AREA(
        child: SCAFFOLD(
            backgroundColor: Colors.white,
            appBar: APPBAR(
                onPressed: () => Get.back(),
                title: InputPhoneNumberWord.inputNomorHandphone.text,
                progressData: 1),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputLocation(),
                  Container(height: 8, color: GREY_BACKGROUND),
                  InputNumberPhone(),
                  const InputDescription(),
                ],
              ),
            ),
            bottomNavigationBar: InputNumberNextButton()));
  }
}

class InputNumberNextButton extends StatelessWidget {
  InputNumberNextButton({super.key});
  final InputPhoneNumberController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 39),
      child: Obx(() => BUTTON(
          radiusCircular: 999,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(InputPhoneNumberWord.lanjut.text,
                style: textStyleW700(fontSize: 18, fontColor: Colors.white)),
          ),
          onPressed: _controller.next())),
    );
  }
}

class InputDescription extends StatelessWidget {
  const InputDescription({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        child: Card(
          color: BLUE_LIGHT,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(lampAssets),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                            text: InputPhoneNumberWord
                                .kamiAkanMelakukanProses.text,
                            style: textStyleW500(
                                fontSize: 12, fontColor: BLUE_TEXT)),
                        TextSpan(
                            text: InputPhoneNumberWord
                                .nomorAndaMemilikiPulsa.text,
                            style: textStyleW700(
                                fontSize: 12, fontColor: BLUE_TEXT))
                      ])),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(keyAssets),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                            text: InputPhoneNumberWord.jagaKerahasiaanOTP.text,
                            style: textStyleW700(
                                fontSize: 12, fontColor: BLUE_TEXT)),
                        TextSpan(
                            text: InputPhoneNumberWord
                                .denganTidakMemberitahu.text,
                            style: textStyleW500(
                                fontSize: 12, fontColor: BLUE_TEXT))
                      ])),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InputNumberPhone extends StatelessWidget {
  InputNumberPhone({super.key});
  final InputPhoneNumberController _controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(InputPhoneNumberWord.nomorHandphone.text,
              style: textStyleW600(fontSize: 14)),
          TextFormField(
            keyboardType: TextInputType.number,
            style: textStyleW500(fontSize: 16),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
                prefixIcon: Padding(
              padding: const EdgeInsets.only(right: 18.43, bottom: 12),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MaterialButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {},
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundImage: AssetImage(indonesianFlagAssets),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          InputPhoneNumberWord.indonesia62.text,
                          style: textStyleW500(fontSize: 15),
                        ),
                        const SizedBox(width: 14.14),
                        Transform.rotate(
                            angle: 15 / math.pi,
                            child: const Icon(
                              Icons.arrow_back_ios_new,
                              color: ORANGE,
                              size: 20,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            )),
            controller: _controller.numberEditingController,
            validator: _controller.phoneNumberValidator(),
            onChanged: _controller.phoneNumberOnChange(),
          ),
        ],
      ),
    );
  }
}

class InputLocation extends StatelessWidget {
  InputLocation({super.key});
  final InputPhoneNumberController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(InputPhoneNumberWord.posisiAndaSaatIni.text,
              style: textStyleW600(fontSize: 14)),
          MaterialButton(
            padding: const EdgeInsets.all(0),
            onPressed: _controller.selectingCountry(context),
            child: Container(
              padding: const EdgeInsets.only(bottom: 10),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 0.2, color: Colors.grey))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Obx(() => Text(_controller.selectedCountry.value,
                      style: textStyleW500(fontSize: 16))),
                  Transform.rotate(
                      angle: 15 / math.pi,
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: ORANGE,
                        size: 20,
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
