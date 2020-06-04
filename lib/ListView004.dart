import 'package:flutter/material.dart';
import "dart:math";
import 'package:http/http.dart' as http;
import 'dart:convert';

class ListView004 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {



    List<ChengYuInfo> _datas=[];
  //异步加载数据
  _loadData() async {
    //下面为具体网址，需要自己修改
    String url = "http://www.wx6.org/api/getchengyulist";
    http.Response response = await http.get(url);
    setState(() {
      final data = jsonDecode(response.body);
      for (var _data in data) {
      	//双引号中的内容需要和 json 数据中的键值对应
        _datas.add(ChengYuInfo(_data["Id"],_data["patientPortrait"]));
      }
    });
  } 


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


class ChengYuInfo{
  final int id;
  final String chengYu;
  ChengYuInfo(this.id,this.chengYu);

}