import 'package:flutter/material.dart';

void main() => runApp(VerticalListView());

// ListView 纵向
class VerticalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text('ListView 纵向')),
      body: new ListView(
        children:<Widget>[
          // new Image.network("https://cdn.pixabay.com/photo/2020/03/18/14/48/clouds-4944276_1280.jpg"),
          // new Image.network("https://cdn.pixabay.com/photo/2017/08/29/12/03/accommodation-2693042_1280.jpg"),
          // new Image.network("https://cdn.pixabay.com/photo/2017/12/21/12/12/cat-3031684__480.jpg"),
          // new Image.network("https://cdn.pixabay.com/photo/2020/03/24/16/17/mask-4964590__480.png"),
          new ListTile(
            leading:new Icon(Icons.access_alarm),
            title: new Text('access_alarm'),
          ),
          new ListTile(
            leading:new Icon(Icons.account_balance),
            title: new Text('account_balance'),
          ),
          new ListTile(
            leading:new Icon(Icons.add_to_photos),
            title: new Text('add_to_photos', style: new TextStyle(color:Colors.red)),
          )
        ],
      ),
    );
  }
}