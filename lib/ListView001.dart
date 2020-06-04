import 'package:flutter/material.dart';

class ListView001 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(width: 180.0, color: Colors.black),
        new Container(width: 180.0, color: Colors.blue),
        new Container(width: 180.0, color: Colors.yellow),
        new Container(width: 180.0, color: Colors.orange),
      ],
    );
  }
}
