import 'package:flutter/material.dart';
import 'package:newdoasdk/newdoasdk.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  NewDoaSdk newDoaSdk = NewDoaSdk();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              newDoaSdk.setZolozBaseUrl("192.168.0.107:8080");
              newDoaSdk.setRecaptchaSiteKey(
                  "6LcS0egkAAAAAMY8KtKzgWr7dT8axb-hK9o4RFSK");
              newDoaSdk.runSdk(context);
            },
            child: const Text("data")),
      ),
    ));
  }
}
