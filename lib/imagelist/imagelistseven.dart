import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ImageListseven extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
        final imagecard = new Container(
          height: 124.0,
          margin: new EdgeInsets.only(left: 8.0),
          decoration: new BoxDecoration(
              color: new Color(0xFF333366),
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
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
              color: Colors.red,
              child: Text('More Info'),
              onPressed: _launchUrl
            ), 
              
            ],
          )
            );   
    return new Container(
        margin: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 8.0,
        ),
        child: new Stack(

          children: <Widget>[
            imagecard,
          ],
        ),

    );
    
  }
}
_launchUrl() async {
  final String url = "https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}