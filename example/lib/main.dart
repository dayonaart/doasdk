import 'package:doasdk/newdoasdk.dart';
import 'package:flutter/material.dart';
import 'package:doasdk/routes.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final doaSdk = DoaSdk();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              doaSdk.setZolozBaseUrl("192.168.228.204:8080");
              doaSdk.setRecaptchaSiteKey(
                  "6LcS0egkAAAAAMY8KtKzgWr7dT8axb-hK9o4RFSK");
              doaSdk.runSdk(context, route: ROUTE.onBoarding.name);
            },
            child: const Text("data")),
      ),
    ));
  }
}
