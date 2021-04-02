import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ResultScreen extends StatelessWidget {
  final String text;

  const ResultScreen({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Generated QR Code",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffF50057),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              QrImage(
                data: text,
                version: QrVersions.auto,
                size: 250.0,
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                height: height * 0.08,
                width: width * 0.8,
                child: ElevatedButton(
                  child: Text("GO BACK"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                    elevation: 0.0,
                    backgroundColor: Color(0xffF50057),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    textStyle: TextStyle(
                      fontSize: 24,
                    ),
                    padding: EdgeInsets.all(8.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
