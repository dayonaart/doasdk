import 'package:flutter/material.dart';
import 'package:newdoasdk/newdoasdk.dart';
import 'package:newdoasdk/routes.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final newDoaSdk = NewDoaSdk();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              newDoaSdk.setZolozBaseUrl("192.168.158.204:9000");
              newDoaSdk.setRecaptchaSiteKey(
                  "6LcS0egkAAAAAMY8KtKzgWr7dT8axb-hK9o4RFSK");
              newDoaSdk.runSdk(context, route: ROUTE.onBoarding.name);
            },
            child: const Text("data")),
      ),
    ));
  }
}
