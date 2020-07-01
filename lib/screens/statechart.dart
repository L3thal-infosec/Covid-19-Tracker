import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:testing/home_page.dart';
import 'package:testing/screens/helpcenters.dart';
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';
import 'package:testing/screens/worldvisualiser.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() => runApp(new MaterialApp(
      home: new FourthScreen(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    )
    );

class FourthScreen extends StatefulWidget {
  @override
  Statechartdata createState() => new Statechartdata();
}

class Statechartdata extends State<FourthScreen> {

  final String url="https://api.covid19india.org/data.json";
  List data;


  @override
  void initState(){
    super.initState();
    this.getJsonData();
  }

  Future<String> getJsonData() async{
    var response = await http.get(
        Uri.encodeFull(url),
      headers: {"Accept": "application/json"}

    );

    print(response.body);

    setState(() {
      var toJsonData = json.decode(response.body);
      data = toJsonData['statewise'];
    });

    return "Success";
}

  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Statewise COVID-19 Data",style: TextStyle(fontSize: 18,fontFamily: 'Poppins',color: Colors.black),),
          centerTitle: true,
        ),
        backgroundColor: Colors.black12,
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
        body: new ListView.builder(
            itemCount: data == null ? 0 : data.length,
            itemBuilder: (BuildContext context, int index) {
              return new Container(
                  child: new Center(
                      child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Card(
                      child: new Container(
                        decoration: new BoxDecoration(
    color: Colors.blue,
    shape: BoxShape.rectangle,
    borderRadius: new BorderRadius.circular(8.0),
    boxShadow: <BoxShadow>[
      new BoxShadow(
        color: Colors.black12,
        blurRadius: 10.0,
        offset: new Offset(0.0, 10.0),
      ),
    ],
  ),
                    child: new Text(" ${data[index]['state']}      ${data[index]['statecode']} \n Active: ${data[index]['active']} \n Confirmed: ${data[index]['confirmed']} \n Deaths: ${data[index]['deaths']} \n Recovered: ${data[index]['recovered']} \n Last updated time: ${data[index]['lastupdatedtime']}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Poppins',fontSize: 19),
                    ),
                    padding: const EdgeInsets.all(17),
                  ),
                ),
                ],
              )
              )
            );
            }
            )
            );
  }
}


class Task{

      String task;
      double taskvalue;
      Color colorval;

      Task(this.task,this.taskvalue,this.colorval);
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