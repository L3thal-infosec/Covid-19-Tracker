import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:testing/homepage/HomePageBodyone.dart';
import 'package:testing/homepage/HomePageBodytwo.dart';
import 'package:testing/homepage/HomePageBodythree.dart';
import 'package:testing/homepage/HomePageBodyfour.dart';
import 'package:testing/homepage/HomePageBodyfive.dart';
import 'package:testing/homepage/HomePageBodysix.dart';
import 'package:testing/homepage/HomePageBodyseven.dart';
import 'package:testing/screens/helpcenters.dart';
import 'package:testing/screens/statetracker.dart';
import 'package:testing/screens/tweetscraper.dart';
import 'package:testing/screens/worldvisualiser.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  
Future<void> _showInfoDialog() {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          
          backgroundColor: Colors.deepOrangeAccent,
          title: const Text('COVID-19 Tracker',style: TextStyle(fontSize: 18,fontFamily: 'Poppins',color: Colors.black,fontWeight: FontWeight.bold),),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                new Text(' Developed by Karthik',style: TextStyle(fontSize: 18,fontFamily: 'Poppins',color: Colors.black,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Text(
                    'https://github.com/L3thal-infosec',
                    style: TextStyle(
                      fontSize: 18,fontFamily: 'Poppins',color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () =>
                      launch('https://github.com/L3thal-infosec'),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: const Text('OK',style: TextStyle(color: Colors.black),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  } 
  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      appBar: AppBar(
        title: Text('How to Protect Yourself & Others',style: TextStyle(fontSize: 15,fontFamily: 'Poppins',color: Colors.black),),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: _showInfoDialog,
          )
        ],
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 50,
         brightness: Brightness.dark,
      ),
      backgroundColor: Colors.black12,
      body: SingleChildScrollView(
        child: Column(
        children: <Widget>[
          new HomePageBodyOne(),
          new HomePageBodyTwo(),
          new HomePageBodyThree(),
          new HomePageBodyFour(),
          new HomePageBodyFive(),
          new HomePageBodySix(),
          new HomePageBodySeven(),
        ],
      ),
      ),
      drawer: new Drawer(
        child: Container(color: Colors.yellow,
        child: ListView(
          children: <Widget>[
            ListTile( 
              leading: Icon(MdiIcons.homeExportOutline,color: Colors.lightBlue),
              title:Text('Home',
              style: TextStyle(
                fontSize: 18,
              ),
              ),
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  )
                );
              },        
            ),    
            ListTile( 
              leading: Icon(MdiIcons.database,color: Colors.lightBlue),
              title:Text('Covid-19 Statewise Tracker',
              style: TextStyle(
                fontSize: 17.5,
              ),
              ),
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => FourthScreen()
                  )
                );
              },        
            ),
            ListTile( 
              leading: Icon(MdiIcons.cardAccountPhone,color: Colors.lightBlue),
              title:Text('Covid-19 Helpcenters',
              style: TextStyle(
                fontSize: 18,
              ),
              ),
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => FifthScreen()
                  )
                );
              },        
            ),
            ListTile( 
              leading: Icon(MdiIcons.googleEarth,color: Colors.lightBlue),
              title:Text('World Covid-19 Visualiser',
              style: TextStyle(
                fontSize: 18,
              ),
              ),
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => SixthScreen()
                  )
                );
              },        
            ),
            ListTile( 
              leading: Icon(MdiIcons.googleEarth,color: Colors.lightBlue),
              title:Text('Twitter',
              style: TextStyle(
                fontSize: 18,
              ),
              ),
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => TwitterApp()
                  )
                );
              },        
            ),
            ListTile( 
              leading: Icon(MdiIcons.exitToApp,color: Colors.lightBlue),
              title: Text('Aarogya Setu App',
              style: TextStyle(
                fontSize: 18,
              ),
              ),
              onTap: _launchUrl1        
            ),
            ListTile( 
              leading: Icon(MdiIcons.giftOutline,color: Colors.lightBlue),
              title:Text('Donate',
              style: TextStyle(
                fontSize: 18,
              ),
              ),
              onTap: _launchUrl2        
            ),
            ListTile( 
              leading: Icon(MdiIcons.headSnowflake,color: Colors.lightBlue),
              title:Text('Mental Health',
              style: TextStyle(
                fontSize: 18,
              ),
              ),
              onTap: _launchUrl3        
            ),
            ],
        ),
        ),
      ),
      
    );
  }
}

_launchUrl1() async {
  final String url = "https://play.google.com/store/apps/details?id=nic.goi.aarogyasetu";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchUrl2() async {
  final String url = "https://www.pmindia.gov.in/en/?query#";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchUrl3() async {
  final String url = "https://www.who.int/docs/default-source/coronaviruse/mental-health-considerations.pdf";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}