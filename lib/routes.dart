import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:newdoasdk/pages/account_type.dart';
import 'package:newdoasdk/pages/data_verification.dart';
import 'package:newdoasdk/pages/liveness_verification.dart';
import 'package:newdoasdk/pages/photo_validation.dart';
import 'package:newdoasdk/pages/input_phone_number.dart';
import 'package:newdoasdk/pages/pretake_ktp.dart';
import 'package:newdoasdk/pages/onboarding.dart';
import 'package:newdoasdk/pages/opening_account.dart';
import 'package:newdoasdk/pages/opening_tnc.dart';
import 'package:newdoasdk/pages/preregister.dart';
import 'package:newdoasdk/pages/pretake_npwp.dart';
import 'package:newdoasdk/pages/preview_take_image_camera.dart';
import 'package:newdoasdk/pages/registration_form.dart';
import 'package:newdoasdk/pages/registration_form_job_detail.dart';
import 'package:newdoasdk/pages/registration_form_office_branch.dart';
import 'package:newdoasdk/pages/registration_form_private.dart';
import 'package:newdoasdk/pages/selfie_and_ktp.dart';
import 'package:newdoasdk/pages/take_ktp.dart';
import 'package:newdoasdk/pages/pretake_signature.dart';
import 'package:newdoasdk/pages/take_npwp.dart';
import 'package:newdoasdk/pages/take_signature.dart';

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
    GetPage(name: ROUTE.onBoarding.name, page: () => OnBoarding()),
    GetPage(name: ROUTE.previewTakeImage.name, page: () => PreviewTakeImage()),
    GetPage(name: ROUTE.preRegister.name, page: () => const PreRegister()),
    GetPage(
        name: ROUTE.openingAccount.name, page: () => const OpeningAccount()),
    GetPage(name: ROUTE.openingTnc.name, page: () => OpeningTnc()),
    GetPage(name: ROUTE.inputPhoneNumber.name, page: () => InputPhoneNumber()),
    GetPage(name: ROUTE.accountType.name, page: () => AccountType()),
    GetPage(name: ROUTE.preTakeKtp.name, page: () => PreTakeKtp()),
    GetPage(name: ROUTE.takeKtp.name, page: () => TakeKtp()),
    GetPage(name: ROUTE.registrationForm.name, page: () => RegistrationForm()),
    GetPage(
        name: ROUTE.registrationFormPrivate.name,
        page: () => RegistrationFormPrivate()),
    GetPage(
        name: ROUTE.registrationFormJobDetail.name,
        page: () => RegistrationFormJobDetail()),
    GetPage(
        name: ROUTE.registrationFormOfficeBranch.name,
        page: () => RegistrationFormOfficeBranch()),
    GetPage(
        name: ROUTE.livenessVerification.name,
        page: () => LivenessVerification()),
    GetPage(name: ROUTE.selfieAndKtp.name, page: () => SelfieAndKtp()),
    GetPage(name: ROUTE.preTakeSignature.name, page: () => PreTakeSignature()),
    GetPage(name: ROUTE.takeSignature.name, page: () => TakeSignature()),
    GetPage(name: ROUTE.preTakeNpwp.name, page: () => PreTakeNpwp()),
    GetPage(name: ROUTE.takeNpwp.name, page: () => TakeNpwp()),
    GetPage(name: ROUTE.photoValidation.name, page: () => PhotoValidation()),
    GetPage(name: ROUTE.dataVerification.name, page: () => DataVerification()),
  ];
}
