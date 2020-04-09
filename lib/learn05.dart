import 'package:flutter/material.dart';

void main() => runApp(LearnCardLayout());

// 卡片布局
class LearnCardLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var card = Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title:Text('路飞'),
            subtitle:Text('123'),
            leading: Icon(Icons.account_circle, color:Colors.blueAccent),
          ),
          Divider(),
          ListTile(
            title:Text('索隆'),
            subtitle:Text('456'),
            leading: Icon(Icons.account_circle, color:Colors.blueAccent),
          ),
          Divider(),
          ListTile(
            title:Text('山治'),
            subtitle:Text('789'),
            leading: Icon(Icons.account_circle, color:Colors.blueAccent),
          )
        ],
      ),
    );

    return Scaffold(
        appBar: AppBar(title:Text('卡片布局')),
        body: card,
    );
  }
}