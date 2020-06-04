 import 'package:flutter/material.dart';


class Page04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("返回"),),
      body: Center(
        child: RaisedButton(
          child: Text("第四個頁面"),
          onPressed: (){
            //Navigator.pop(context),返回上一级视图，
            Navigator.pop(context);
          },
        ),
      ),
 
    );
  }
}
 