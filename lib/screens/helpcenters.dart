// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs

import 'dart:async';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:testing/home_page.dart';
import 'package:testing/screens/statetracker.dart';
import 'package:testing/screens/worldvisualiser.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(FifthScreen());
}

class FifthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'URL Launcher',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(title: 'Help-Line Numbers',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  Future<void> _launched;
  Widget _launchStatus(BuildContext context, AsyncSnapshot<void> snapshot) {
    if (snapshot.hasError) {
      return Text('Error: ${snapshot.error}');
    } else {
      return const Text('');
    }
  }
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      backgroundColor: Colors.black26,
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
              leading: Icon(MdiIcons.exitToApp,color: Colors.lightBlue),
              title:Text('Aarogya Setu App',
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
      body: ListView(
        padding: new EdgeInsets.all(32.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                 color: Colors.red,
              child: ListTile(
                 leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
              title:Text('Andhra Pradesh',
              style: TextStyle(
                fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
              ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:08662410978');
                }),   
                  ),
              ),
                new SizedBox(
                  height: 20,
                ),
                new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Arunachal Pradesh',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:9436055743');
                }), 
              ),   
                  ),
                new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Assam',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:6913347770');
                }), 
              ),   
                  ),
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Bihar',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:104');
                }), 
              ),   
                  ),
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Chattisgarh',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:104');
                }), 
              ),   
                  ),  
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Goa',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:104');
                }), 
              ),   
                  ), 
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Gujarat',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:104');
                }), 
              ),   
                  ),
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Haryana',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:8558893911');
                }), 
              ),   
                  ), 
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Himachal Pradesh',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:104');
                }), 
              ),   
                  ),
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Jharkhand',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:104');
                }), 
              ),   
                  ), 
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Karnataka',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:104');
                }), 
              ),   
                  ),  
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Kerala',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:04712552056');
                }), 
              ),   
                  ),
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Madhya Pradesh',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:104');
                }), 
              ),   
                  ), 
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Maharashtra',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:02026127394');
                }), 
              ),   
                  ), 
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Manipur',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:385241168');
                }), 
              ),   
                  ),  
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Meghalaya',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:108');
                }), 
              ),   
                  ),
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Mizoram',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:102');
                }), 
              ),   
                  ),  
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Nagaland',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:7005539653');
                }), 
              ),   
                  ),
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Odisha',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:9439994859');
                }), 
              ),   
                  ), 
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Punjab',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:104');
                }), 
              ),   
                  ), 
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Rajasthan',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:01412225624');
                }), 
              ),   
                  ),
                  new SizedBox(
                  height: 20,
                ),
                new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Sikkim',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:104');
                }), 
              ),   
                  ), 
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Tamil Nadu',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:044-29510500');
                }), 
              ),   
                  ), 
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Telangana',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:104');
                }), 
              ),   
                  ),
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Tripura',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:03812315879');
                }), 
              ),   
                  ),
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Uttarakhand',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:104');
                }), 
              ),   
                  ),  
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Uttar Pradesh',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:18001805145');
                }), 
              ),   
                  ),
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('West Bengal(1)',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:1800313444222');
                }), 
              ),   
                  ),
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('West Bengal(2)',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:03323412600');
                }), 
              ),   
                  ),
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Andaman and Nicobar Islands',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:03192232102');
                }), 
              ),   
                  ), 
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Chandigarh',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:9779558282');
                }), 
              ),   
                  ),
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Dadra and Nagar Haveli and Daman & Diu',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:104');
                }), 
              ),   
                  ), 
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Delhi',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:01122307145');
                }), 
              ),   
                  ), 
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Jammu & Kashmir(1)',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:01912520982');
                }), 
              ),   
                  ), 
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Jammu & Kashmir(2)',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:01942440283');
                }), 
              ),   
                  ),
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Ladakh',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:01982256462');
                }), 
              ),   
                  ), 
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Lakshwadweep',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:104');
                }), 
              ),   
                  ), 
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Puducherry',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:104');
                }), 
              ),   
                  ),   
                  new SizedBox(
                  height: 20,
                ),
                 new Container(
                 color: Colors.red,
              child: ListTile(
                     leading: Icon(MdiIcons.phone,color: Colors.lightBlue),
                  title: Text('Central',
                  style: TextStyle(
                  fontSize: 20, color: Colors.white,fontFamily: 'Poppins',
              ),
                  ),
                onTap: () => setState(() {
                  _launched = _makePhoneCall('tel:+911123978046');
                }), 
              ),   
                  ), 
              const Padding(padding: EdgeInsets.all(16.0)),
              FutureBuilder<void>(future: _launched, builder: _launchStatus),
            ],
          ),
        ],
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