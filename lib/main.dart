import 'package:flutter/material.dart';
import 'package:testing/home_page.dart';
import 'package:testing/screens/helpcenters.dart';
import 'package:testing/screens/statetracker.dart';
import 'package:testing/screens/worldvisualiser.dart';
import 'package:testing/splashpage.dart';
import 'package:testing/screens/tweetscraper.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid-19 App',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: SplashPage(),
      routes: {
        '/home': (context) => HomePage(),
        '/fourth': (context) => FourthScreen(),
        '/fifth': (context) => FifthScreen(),
        '/sixth': (context) => SixthScreen(),
        '/third': (context) => TwitterApp()
      },
    );
  }
}
