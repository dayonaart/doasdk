import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:doasdk/controller/main_controller.dart';
import 'package:doasdk/routes.dart';
import 'package:doasdk/style/colors.dart';
import 'package:doasdk/style/textstyle.dart';
import 'package:doasdk/utils.dart';

class RegistrationFormController extends GetxController {
  final MainController _mController = Get.find();
  String get _myKtpPath => "assets/my_ktp.JPG";
  RxBool enableEditing = RxBool(false);
  DateTime? _selectedDob;
  Rx<Widget?> ktpWidget = Rx(null);
  final _now = DateTime.now();
  bool get _mature {
    try {
      return _selectedDob!.isBefore(DateTime(
          (_now.year - 17), _now.month, _now.day, _now.hour, _now.minute));
    } catch (e) {
      return false;
    }
  }

  late TextEditingController nikTextController,
      fullNameTextController,
      dobTextController,
      referalCodeTextController;
  late List<FocusNode> focusNode;
  late List<RxBool> validationForm;
  void Function() enableOnEditTextField() {
    return () {
      enableEditing.value = !enableEditing.value;
    };
  }

  void Function() datePicker() {
    return () async {
      Get.dialog(Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: SizedBox(
              height: Get.height / 3,
              width: Get.width / 1.2,
              child: CupertinoDatePicker(
                minimumDate: DateTime(1900),
                maximumDate: DateTime.now(),
                mode: CupertinoDatePickerMode.date,
                initialDateTime: _selectedDob ??
                    DateTime.now().subtract(const Duration(seconds: 10)),
                onDateTimeChanged: (DateTime newDateTime) {
                  _selectedDob = newDateTime;
                  dobOnChange()
                      .call(DateFormat("dd MMMM yyyy").format(newDateTime));
                  dobTextController.text =
                      DateFormat("dd MMMM yyyy").format(newDateTime);
                },
              ),
            ),
          ),
        ],
      ));
    };
  }

  TextEditingController? textController(int i) {
    switch (i) {
      case 0:
        return nikTextController;
      case 1:
        return fullNameTextController;
      case 2:
        return dobTextController;
      case 3:
        return referalCodeTextController;
      default:
        return null;
    }
  }

  Widget? suffixHelperWidget(int i) {
    switch (i) {
      case 2:
        return const Icon(Icons.date_range, color: ORANGE);
      default:
        return null;
    }
  }

  void Function(String) nikOnChange() {
    return (val) {
      if (val.isEmpty) {
        validationForm[0].value = false;
      } else if (!val.isValidNpwp()) {
        validationForm[0].value = false;
      } else {
        validationForm[0].value = true;
      }
    };
  }

  void Function(String) fullNameOnChange() {
    return (val) {
      if (val.isEmpty) {
        validationForm[1].value = false;
      } else if (val.isNotValidPersonName()) {
        validationForm[1].value = false;
      } else {
        validationForm[1].value = true;
      }
    };
  }

  void Function(String) dobOnChange() {
    return (val) {
      if (val.isEmpty) {
        validationForm[2].value = false;
      } else if (!_mature) {
        validationForm[2].value = false;
      } else {
        validationForm[2].value = true;
      }
    };
  }

  void Function(String)? formOnChange(int i) {
    switch (i) {
      case 0:
        return nikOnChange();
      case 1:
        return fullNameOnChange();
      case 2:
        return dobOnChange();
      default:
        return null;
    }
  }

  String? Function(String?)? nikValidator() {
    return (val) {
      if (!val!.isValidNpwp()) {
        return "Masukan 16 digit NIK";
      } else {
        return null;
      }
    };
  }

  String? Function(String?)? fullNameValidator() {
    return (val) {
      if (val!.isEmpty) {
        return "Wajib diisi";
      } else if (val.isNotValidPersonName()) {
        return "Nama Lengkap mengandung karakter tidak valid";
      } else {
        return null;
      }
    };
  }

  String? Function(String?)? dobValidator() {
    return (val) {
      if (!_mature) {
        return "Usia Anda belum memenuhi syarat";
      } else {
        return null;
      }
    };
  }

  String? Function(String?)? formValidator(int i) {
    switch (i) {
      case 0:
        return nikValidator();
      case 1:
        return fullNameValidator();
      case 2:
        return dobValidator();
      default:
        return null;
    }
  }

  void Function()? onCompleteEditing(int i) {
    return () {
      if (i == 1) {
        datePicker().call();
      }
      focusNode[i].nextFocus();
    };
  }

  TextInputType? textInputType(int i) {
    switch (i) {
      case 0:
        return TextInputType.number;
      case 1:
        return TextInputType.name;
      case 2:
        return TextInputType.datetime;
      default:
        return null;
    }
  }

  Widget textEditingLabel(int i) {
    switch (i) {
      case 0:
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            "NIK",
            style: textStyleW600(fontSize: 16),
          ),
        );
      case 1:
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text.rich(TextSpan(children: [
            TextSpan(text: "Nama Lengkap", style: textStyleW600(fontSize: 16)),
            TextSpan(
                text: " (tanpa gelar)",
                style: textStyleW500(fontSize: 16, fontColor: GREY)),
          ])),
        );
      case 2:
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            "Tanggal Lahir",
            style: textStyleW600(fontSize: 16),
          ),
        );
      case 3:
        return Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Text.rich(TextSpan(children: [
            TextSpan(
                text: "Kode Referral ", style: textStyleW600(fontSize: 16)),
            TextSpan(
                text: "(Opsional)",
                style: textStyleW500(fontSize: 16, fontColor: GREY)),
          ])),
        );
      default:
        return Container();
    }
  }

  Future<void> _getcropImage() async {
    var _cropedImage =
        await _mController.cropImage(_mController.ktpFile.value, isKtp: true);
    ktpWidget.value = ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.memory(_cropedImage!,
            height: 128, width: 191, fit: BoxFit.cover));
  }

  @override
  void onInit() {
    nikTextController = TextEditingController();
    fullNameTextController = TextEditingController();
    dobTextController = TextEditingController();
    referalCodeTextController = TextEditingController();
    focusNode = List.generate(4, (i) => FocusNode());
    validationForm = List.generate(3, (i) {
      return RxBool(false);
    });
    super.onInit();
  }

  @override
  void onReady() async {
    _mController.startProgressAnim();
    await _getcropImage();
    super.onReady();
  }

  void Function()? next() {
    if (validationForm.contains(false.obs)) {
      return null;
    }
    return () async {
      final _payload = {
        'nik': nikTextController.text,
        'full_name': fullNameTextController.text,
        'dob': dobTextController.text,
        'referral_code': referalCodeTextController.text
      };
      _mController.setKtpData(_payload);
      await Get.toNamed(ROUTE.registrationFormPrivate.name);
    };
  }
}
