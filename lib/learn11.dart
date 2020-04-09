import 'package:flutter/material.dart';

void main() => runApp(HorizontalListView());

// ListView 水平
class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text('ListView 水平')),
      body: Center(
        child: Container(
          height: 200.0,
          child:MyListView()
        ),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children:<Widget>[
        new Container(
          width:180.0,
          color:Colors.redAccent,
        ),
        new Container(
          width:180.0,
          color:Colors.blueAccent,
        ),
        new Container(
          width:180.0,
          color:Colors.purpleAccent,
        ),
        new Container(
          width:180.0,
          color:Colors.orangeAccent,
        ),
      ],
    );
  }
}