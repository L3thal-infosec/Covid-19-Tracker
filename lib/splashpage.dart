import 'package:flutter/material.dart';
import 'dart:async';

import 'package:testing/home_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  startSplashTimer() {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigateToHome);
  }

  navigateToHome() {
    Navigator.pushReplacement(
      context, 
      MaterialPageRoute(
        builder: (context) => HomePage()
      )
    );
  }

  @override
  void initState() {
    startSplashTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: deviceHeight * 0.2,
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/corona.png")
                )
              ),
            ),
            SizedBox(
              height: deviceHeight * 0.2,
            ),
            Text(
              "COVID-19 TRACKER",
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Let us Fight this Together",
              style: TextStyle(
                color: Colors.white,
                height: 1,
                wordSpacing: 1.5,
                fontSize: 22,
              ),
            )
          ],
        ),
      ),
    );
  }
}