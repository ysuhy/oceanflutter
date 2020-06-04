import 'package:flutter/material.dart'; 
import '02ListView/02.dart';
import 'ListView001.dart';
import 'ListView002.dart';
import 'ListView003.dart';
import 'ListView004.dart';
import '04/04.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: new MyScaffold(),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /**
     * Scaffold 是 Material library 中提供的一个widget,
     * 它提供了默认的导航栏、标题和包含主屏幕widget树的body属性。
     * widget树可以很复杂
     */
    return new Material(
        child: new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Ocean Flutter",
        ),
      ),
      //Center控件使其子控件在中间位置
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[


          new RaisedButton(
            child: Text("List View 001 横向"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Scaffold(
                     appBar: AppBar(title: Text("返回"),),
                  body: Center(
                    child: Container(
                      height:200.0,
                      child: ListView001()
                    ),
                ),);
              }));
            },
          ),


          new RaisedButton(
            child: Text("List View 002 竖向"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Scaffold(
                     appBar: AppBar(title: Text("返回"),),
                  body: Center(
                    child: Container( 
                      child: ListView002()
                    ),
                ),);
              }));
            },
          ),

          new RaisedButton(
            child: Text("List View 003 动态"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Scaffold(
                     appBar: AppBar(title: Text("返回"),),
                  body: Center(
                    child: Container( 
                      child: ListView003()
                    ),
                ),);
              }));
            },
          ),

          new RaisedButton(
            child: Text("List View 004 AJAX数据"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Scaffold(
                     appBar: AppBar(title: Text("返回"),),
                  body: Center(
                    child: Container( 
                      child: ListView004()
                    ),
                ),);
              }));
            },
          ),


          new RaisedButton(
            child: Text("02 List View"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return new ListViewPage();
              }));
            },
          ),
          new RaisedButton(
            child: Text("03 Text Widget"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return new ListViewPage();
              }));
            },
          ),
          new RaisedButton(
            child: Text("04 Text Widget"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return new Page04();
              }));
            },
          ),
         
          const Text('I\'m dedicating every day to you'),
          const Text('Domestic life was never quite my style'),
          const Text('When you smile, you knock me out, I fall apart'),
          const Text('And I thought I was so smart'),
        ],
      ),
    ));
  }
}
