import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:doasdk/const_path.dart';
import 'package:doasdk/controller/main_controller.dart';
import 'package:doasdk/pages/unknown_route.dart';
import 'package:doasdk/routes.dart';

class DoaSdk {
  /// Untuk dapat terhubung dengan ZOLOZ SDK dengan koneksi local berikan param dengan format ip:port
  ///
  /// contoh 192.168.100.100:8080
  void setZolozBaseUrl(String url) {
    if (url.contains("192")) {
      zolozBaseUrl = "http://$url/api/";
    } else {
      zolozBaseUrl = "https://$url/api";
    }
  }

  /// site key dari google enterprise https://cloud.google.com/recaptcha-enterprise,
  ///
  /// untuk mendapatkan site key kalian perlu signup atau generate jika sudah teregristrasi
  void setRecaptchaSiteKey(String? siteKey) {
    assert(siteKey != null);
    recaptchaSiteKey = siteKey!;
  }

  Future<void> runSdk(
    BuildContext? context, {
    String? route,
  }) async {
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
                  initialRoute: route ?? ROUTE.onBoarding.name,
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
                  onPressed: () {
                    final MainController _mController = Get.find();
                    _mController.camController?.dispose();
                    Navigator.of(context).pop(true);
                  },
                  child: const Text('Ya'),
                ),
              ],
            ),
          ) ??
          false;
    };
  }
}
