import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:doasdk/pages/account_type.dart';
import 'package:doasdk/pages/data_verification.dart';
import 'package:doasdk/pages/liveness_verification.dart';
import 'package:doasdk/pages/photo_validation.dart';
import 'package:doasdk/pages/input_phone_number.dart';
import 'package:doasdk/pages/pretake_ktp.dart';
import 'package:doasdk/pages/onboarding.dart';
import 'package:doasdk/pages/opening_account.dart';
import 'package:doasdk/pages/opening_tnc.dart';
import 'package:doasdk/pages/preregister.dart';
import 'package:doasdk/pages/pretake_npwp.dart';
import 'package:doasdk/pages/preview_take_image_camera.dart';
import 'package:doasdk/pages/registration_form.dart';
import 'package:doasdk/pages/registration_form_job_detail.dart';
import 'package:doasdk/pages/registration_form_office_branch.dart';
import 'package:doasdk/pages/registration_form_private.dart';
import 'package:doasdk/pages/selfie_and_ktp.dart';
import 'package:doasdk/pages/take_ktp.dart';
import 'package:doasdk/pages/pretake_signature.dart';
import 'package:doasdk/pages/take_npwp.dart';
import 'package:doasdk/pages/take_signature.dart';

enum ROUTE {
  onBoarding,
  preRegister,
  openingAccount,
  openingTnc,
  inputPhoneNumber,
  accountType,
  preTakeKtp,
  takeKtp,
  registrationForm,
  registrationFormPrivate,
  registrationFormJobDetail,
  registrationFormOfficeBranch,
  livenessVerification,
  selfieAndKtp,

  ///args0: [appbar title]
  ///args1: [progress data]
  previewTakeImage,
  preTakeSignature,
  takeSignature,
  preTakeNpwp,
  takeNpwp,
  photoValidation,
  dataVerification,
}

extension Page on ROUTE {
  String get name {
    switch (this) {
      case ROUTE.onBoarding:
        return '/';
      case ROUTE.previewTakeImage:
        return '/previewImageTakeCamera';
      case ROUTE.preRegister:
        return '/preRegister';
      case ROUTE.openingAccount:
        return '/openingAccount';
      case ROUTE.openingTnc:
        return '/openingTnc';
      case ROUTE.inputPhoneNumber:
        return '/inputPhoneNumber';
      case ROUTE.accountType:
        return '/accountType';
      case ROUTE.preTakeKtp:
        return '/preTakeKtp';
      case ROUTE.takeKtp:
        return '/takeKtp';
      case ROUTE.registrationForm:
        return '/registrationForm';
      case ROUTE.registrationFormPrivate:
        return '/registrationFormPrivate';
      case ROUTE.registrationFormJobDetail:
        return '/registrationFormJobDetail';
      case ROUTE.registrationFormOfficeBranch:
        return '/registrationFormOfficeBranch';
      case ROUTE.livenessVerification:
        return '/livenessVerification';
      case ROUTE.selfieAndKtp:
        return '/selfieAndKtp';

      case ROUTE.preTakeSignature:
        return '/pretakeSignature';
      case ROUTE.takeSignature:
        return '/takeSignature';
      case ROUTE.preTakeNpwp:
        return '/preTakeNpwp';
      case ROUTE.takeNpwp:
        return '/takeNpwp';
      case ROUTE.photoValidation:
        return "/photoValidation";
      case ROUTE.dataVerification:
        return "/dataVerification";
      default:
        return "";
    }
  }
}

List<GetPage> get routePage {
  return [
    GetPage(
        name: ROUTE.onBoarding.name,
        page: () {
          return OnBoarding();
        }),
    GetPage(
        name: ROUTE.previewTakeImage.name,
        page: () {
          return PreviewTakeImage();
        }),
    GetPage(
        name: ROUTE.preRegister.name,
        page: () {
          return const PreRegister();
        }),
    GetPage(
        name: ROUTE.openingAccount.name,
        page: () {
          return const OpeningAccount();
        }),
    GetPage(
        name: ROUTE.openingTnc.name,
        page: () {
          return OpeningTnc();
        }),
    GetPage(
        name: ROUTE.inputPhoneNumber.name,
        page: () {
          return InputPhoneNumber();
        }),
    GetPage(
        name: ROUTE.accountType.name,
        page: () {
          return AccountType();
        }),
    GetPage(
        name: ROUTE.preTakeKtp.name,
        page: () {
          return PreTakeKtp();
        }),
    GetPage(
        name: ROUTE.takeKtp.name,
        page: () {
          return TakeKtp();
        }),
    GetPage(
        name: ROUTE.registrationForm.name,
        page: () {
          return RegistrationForm();
        }),
    GetPage(
        name: ROUTE.registrationFormPrivate.name,
        page: () {
          return RegistrationFormPrivate();
        }),
    GetPage(
        name: ROUTE.registrationFormJobDetail.name,
        page: () {
          return RegistrationFormJobDetail();
        }),
    GetPage(
        name: ROUTE.registrationFormOfficeBranch.name,
        page: () {
          return RegistrationFormOfficeBranch();
        }),
    GetPage(
        name: ROUTE.livenessVerification.name,
        page: () {
          return LivenessVerification();
        }),
    GetPage(
        name: ROUTE.selfieAndKtp.name,
        page: () {
          return SelfieAndKtp();
        }),
    GetPage(
        name: ROUTE.preTakeSignature.name,
        page: () {
          return PreTakeSignature();
        }),
    GetPage(
        name: ROUTE.takeSignature.name,
        page: () {
          return TakeSignature();
        }),
    GetPage(
        name: ROUTE.preTakeNpwp.name,
        page: () {
          return PreTakeNpwp();
        }),
    GetPage(
        name: ROUTE.takeNpwp.name,
        page: () {
          return TakeNpwp();
        }),
    GetPage(
        name: ROUTE.photoValidation.name,
        page: () {
          return PhotoValidation();
        }),
    GetPage(
        name: ROUTE.dataVerification.name,
        page: () {
          return DataVerification();
        }),
  ];
}
