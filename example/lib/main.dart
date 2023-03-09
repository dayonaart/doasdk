import 'package:flutter/material.dart';
import 'package:newdoasdk/newdoasdk.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              NewDoasdk().setZolozBaseUrl("192.168.0.107:8080");
              await NewDoasdk().runSdk(context);
            },
            child: const Text("data")),
      ),
    ));
  }
}
