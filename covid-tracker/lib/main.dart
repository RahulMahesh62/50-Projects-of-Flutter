import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                'Covid-19 Tracker',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: WebView(
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: 'https://dashboard.kerala.gov.in/',
            ),
          ),
        ),
      ),
    );
  }
}
