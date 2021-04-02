import 'package:flutter/material.dart';
import 'package:qr_code_scanner/screens/result_screen.dart';
import './screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => QRHome(),
        "/result": (context) => ResultScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
