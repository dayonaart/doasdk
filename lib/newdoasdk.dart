import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:newdoasdk/api/api.dart';
import 'package:newdoasdk/pages/unknown_route.dart';
import 'package:newdoasdk/routes.dart';
import 'newdoasdk_platform_interface.dart';

class NewDoasdk {
  Future<String?> getPlatformVersion() {
    return NewdoasdkPlatform.instance.getPlatformVersion();
  }

  void setZolozBaseUrl(String url) {
    if (url.contains("192")) {
      zolozBaseUrl = "http://$url/api/";
    } else {
      zolozBaseUrl = "https://$url/api";
    }
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
