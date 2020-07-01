import 'package:flutter/material.dart';

class Replacement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Replacement'),
      ),
      backgroundColor: Colors.black12,
      body: Center(
        child: Text("You can't go back"),
      ),
    );
  }
}