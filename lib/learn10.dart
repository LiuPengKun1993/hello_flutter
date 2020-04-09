import 'package:flutter/material.dart';

// 动态列表
void main() => runApp(LearnDynamicList(
  items:new List<String>.generate(1000, (i)=>"item $i")
));

class LearnDynamicList extends StatelessWidget {
  final List<String> items;
  LearnDynamicList({Key key, @required this.items}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text('hello 动态列表')),
      body:new ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return new ListTile(
            title: new Text('${items[index]}'),
          );
        },
      ),
    );
  }
}