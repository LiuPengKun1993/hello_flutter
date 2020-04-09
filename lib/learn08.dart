import 'package:flutter/material.dart';

void main() => runApp(LearnRowLayout());

// 横向布局 Row
class LearnRowLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(title: new Text('hello 横向布局')),
        body: new Row(
          children:<Widget>[
            new RaisedButton(
              onPressed: (){},
              color: Colors.redAccent,
              child: new Text('red button'),
            ),
            // 带Expanded是灵活的布局，不灵活的不带
            Expanded(
              child:new RaisedButton(
                onPressed: (){},
                color: Colors.blueAccent,
                child: new Text('blue button'),
              ),
            ),
            new RaisedButton(
              onPressed: (){},
              color: Colors.orangeAccent,
              child: new Text('orange button'),
            )
          ],
        ),
    );
  }
}