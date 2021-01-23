import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/joanna-kosinska-1_CMoFsPfso-unsplash.jpg'),
              fit: BoxFit.cover),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Image.asset(
                "assets/prophoto.webp",
              ),
              radius: 75.0,
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Rahul Mahesh",
              style: GoogleFonts.lato(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 35,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Web and App Developer",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Follow me on:",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                    child: Image.asset(
                      "assets/icons8-github-48-min.png",
                      width: 45,
                      height: 45,
                    ),
                    onPressed: () {
                      _launchURL('https://github.com/RahulMahesh62');
                    }),
                SizedBox(
                  width: 5.0,
                ),
                FlatButton(
                    child: Image.asset(
                      "assets/icons8-linkedin-48-min.png",
                      width: 45,
                      height: 45,
                    ),
                    onPressed: () {
                      _launchURL('https://linkedin.com/rahulmahesh');
                    }),
                SizedBox(
                  width: 5.0,
                ),
                FlatButton(
                    child: Image.asset(
                      "assets/icons8-twitter-48-min.png",
                      width: 45,
                      height: 45,
                    ),
                    onPressed: () {
                      _launchURL('https://twitter.com/rahulmahesh62');
                    }),
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 7.0),
              decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: GestureDetector(
                onTap: () {
                _launchURL('https://github.com/RahulMahesh62/Flutter-Portfolio-Website');
              },
                child: Text(
                  'View code on GitHub',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
              " © Rahul Mahesh 2021 ",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
