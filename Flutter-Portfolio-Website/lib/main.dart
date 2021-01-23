import 'package:flutter/material.dart';
import 'package:portfolio/landing.dart';
import 'landing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rahul Mahesh',
      home: Landing(),
      debugShowCheckedModeBanner: false,
    );
  }
}
