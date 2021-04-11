import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final twURL = "https://twitter.com/rahulmahesh62";
  final gtURL = "https://github.com/RahulMahesh62";
  final lkURL = "https://in.linkedin.com/in/rahulmahesh";

  void openURL(url) async {
    await canLaunch(url) ? launch(url) : throw 'Could not launch $url';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.black,
        appBarTheme: AppBarTheme(
          color: Colors.black,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Drawer App",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: Image.asset("assets/read.png"),
          ),
        ),
        drawer: Drawer(
          elevation: 0,
          child: Container(
            color: Colors.white,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    accountEmail: Text(
                      "rahulmahesh62@gmail.com"
                    ),
                    accountName: Text(
                      "Rahul Mahesh",
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png"),
                      radius: 40,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text(
                    "Follow on Twitter",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  onTap: () {
                    openURL(twURL);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.code),
                  title: Text(
                    "Follow on Github",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  onTap: () {
                    openURL(gtURL);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.work),
                  title: Text(
                    "Connect on Linkedin",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  onTap: () {
                    openURL(lkURL);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
