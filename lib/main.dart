import 'package:flutter/material.dart';

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
            child: Text("01 Text Widget"),
            onPressed: () {},
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
