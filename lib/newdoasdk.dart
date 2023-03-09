import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:newdoasdk/const_path.dart';
import 'package:newdoasdk/controller/main_controller.dart';
import 'package:newdoasdk/newdoasdk_platform_interface.dart';
import 'package:newdoasdk/pages/unknown_route.dart';
import 'package:newdoasdk/routes.dart';

class NewDoaSdk {
  Future<String?> getPlatformVersion() {
    return NewDoaSdkPlatform.instance.getPlatformVersion();
  }

  void setZolozBaseUrl(String url) {
    if (url.contains("192")) {
      zolozBaseUrl = "http://$url/api/";
    } else {
      zolozBaseUrl = "https://$url/api";
    }
  }

  void setRecaptchaSiteKey(String? siteKey) {
    assert(siteKey != null);
    recaptchaSiteKey = siteKey!;
  }

  Future<void> runSdk(BuildContext? context) async {
    await initializeDateFormatting().then((value) {
      Intl.defaultLocale = "in";
    });
    assert(context != null);
    await showDialog(
        context: context!,
        builder: (context) {
          return WillPopScope(
              onWillPop: _showExitPopup(context),
              child: GetMaterialApp(
                  onInit: () {
                    Get.put(MainController());
                  },
                  defaultTransition: Transition.size,
                  transitionDuration: const Duration(milliseconds: 500),
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(fontFamily: 'montserrat'),
                  initialRoute: ROUTE.onBoarding.name,
                  getPages: routePage,
                  unknownRoute: GetPage(
                    name: '/notfound',
                    page: () => const UnknownRoute(),
                  )));
        });
  }

  Future<bool> Function()? _showExitPopup(BuildContext context) {
    return () async {
      return await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: const Text('Apakah Anda Yakin Akan Keluar dari Eform?'),
              actions: [
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text('Tidak'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: const Text('Ya'),
                ),
              ],
            ),
          ) ??
          false;
    };
  }
}
