import 'package:flutter/material.dart';
import "dart:math";

class ListView003 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext bc, int index) => buildBody(bc, index));
  }

  Widget buildBody(BuildContext context, int index) {
    List<Color> list = new List<Color>();
    list.add(Colors.black);
    list.add(Colors.red);
    list.add(Colors.yellow);
    list.add(Colors.orange);
    list.add(Colors.blue);
    list.add(Colors.green);
    list.add(Colors.lightGreen);
    list.add(Colors.white38);
    list.add(Colors.lightBlue);
    list.add(Colors.lime);
    list.add(Colors.pink);
    list.add(Colors.teal);
    list.add(Colors.redAccent);
    list.add(Colors.deepPurple);
    list.add(Colors.purple);

    Color color = list[Random().nextInt(list.length)];

    return Container(
      height: 100.0,
      color: color,
      child: Text(
        color.value.toString(),
      ),
      alignment: Alignment.center,
    );
    //return new Text(index.toString());
  }
}
