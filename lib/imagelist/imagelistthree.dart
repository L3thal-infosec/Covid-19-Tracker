import 'package:flutter/material.dart';

class ImageListthree extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
        final imagethumbnailtwo = new Container(
          margin: new EdgeInsets.symmetric(
            vertical: 16.0
          ),
          alignment: FractionalOffset.centerLeft,
          child: new Image(
            image: new AssetImage("assets/images/home.png"),
            height: 92.0,
            width: 92.0,
          )
        );
        final imagecardtwo = new Container(
          height: 124.0,
          margin: new EdgeInsets.only(left: 54.0),
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
             mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Text("Stay home as much as possible.", style: new TextStyle(fontSize:13.0,color: Colors.white),
              ),
              
            ],
          )
            );   
    return new Container(
        margin: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 4.0,
        ),
        child: new Stack(

          children: <Widget>[
            imagecardtwo,
            imagethumbnailtwo,
          ],
        ),

    );
    
  }
}