import 'package:flutter/material.dart';
import 'package:qr_code_scanner/screens/qr.dart';
import 'package:qr_code_scanner/screens/result_screen.dart';

class QRHome extends StatefulWidget {
  @override
  _QRHomeState createState() => _QRHomeState();
}

class _QRHomeState extends State<QRHome> {
  TextEditingController tc = TextEditingController();
  String txt;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    _navigateHome(BuildContext context) async {
      QR qr = new QR(tc.text);
      final result = await Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ResultScreen(
                    text: qr.text,
                  )));
      print(result);
    }

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
                "QR CODE GENERATOR",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffF50057),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(
                  "assets/dra.png",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Enter text to generate QR Code",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: Container(
                  height: height * 0.07,
                  width: width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xffC6C7C4).withOpacity(0.5),
                  ),
                  child: Center(
                    child: TextFormField(
                      controller: tc,
                      cursorColor: Color(0xffF50057),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Text",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                          ),
                          child: Icon(
                            Icons.face,
                            color: Colors.grey,
                            size: 25,
                          ),
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: height * 0.07,
                width: width * 0.8,
                child: ElevatedButton(
                  child: Text("GENERATE QR CODE"),
                  onPressed: () async {
                    _navigateHome(context);
                  },
                  style: TextButton.styleFrom(
                    elevation: 0.0,
                    backgroundColor: Color(0xffF50057),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(21),
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
