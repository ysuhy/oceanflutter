 import 'package:flutter/material.dart';
 


 /*
* 列表控件
*
* */
class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      itemExtent: 60,
      children: List.generate(50, (index) {
        return Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
          ),
          child: Text("item${index}"),
        );
      }),
    );
  }
}
 