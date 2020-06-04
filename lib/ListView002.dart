import 'package:flutter/material.dart';

class ListView002 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        new Container(width: 180.0, height: 180.0, color: Colors.black),
        new Container(width: 180.0, height: 180.0, color: Colors.blue),
        new Container(width: 180.0, height: 180.0, color: Colors.yellow),
        new Container(width: 180.0, height: 180.0, color: Colors.orange),
        new Container(width: 180.0, height: 180.0, color: Colors.red),
        new Container(width: 180.0, height: 180.0, color: Colors.green),
        new Container(width: 180.0, height: 180.0, color: Colors.grey),
      ],
    );
  }
}
