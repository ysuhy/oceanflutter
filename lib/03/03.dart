 import 'package:flutter/material.dart';



 class Page03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return new MaterialApp(
     title: "第02个页面",
      home: Scaffold(
         appBar: new AppBar(
      title: new Text('Demo')
    ),
         body: Text("第03个页面"),
         
       ),
     );
   }
 }