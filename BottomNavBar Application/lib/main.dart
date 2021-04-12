import 'package:flutter/material.dart';

import 'package:bottomsheet_demo/home.dart';

void main() {
  runApp(BottomSheetApp());
}

class BottomSheetApp extends StatefulWidget {
  @override
  _BottomSheetAppState createState() => _BottomSheetAppState();
}

class _BottomSheetAppState extends State<BottomSheetApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}