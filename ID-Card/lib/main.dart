import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('ID Card'),
          centerTitle: true,
          backgroundColor: Colors.grey[900],
          elevation: 0.0),
      backgroundColor: Colors.grey[700],
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50.0),
              CircleAvatar(
                backgroundImage: AssetImage('images/messi.jpg'),
                radius: 70.0,
              ),
              Divider(
                height: 50.0,
                color: Colors.grey[400],
              ),
              Text(
                'Lionel Messi',
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.yellow[600],
                    letterSpacing: 2.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Centre-Forward, FC Barcelona',
                style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.purple[900],
                    letterSpacing: 1.5),
              ),
              SizedBox(height: 20.0),
              Text(
                '6x Golden-Ball winner',
                style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.pink[400],
                    letterSpacing: 1.5),
              ),
              SizedBox(height: 30.0),
              Image.asset(
                'images/barca.png',
                height: 170.0,
                width: 170.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
