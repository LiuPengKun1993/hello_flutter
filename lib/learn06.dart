import 'package:flutter/material.dart';

void main() => runApp(LearnCascadingLayout());

// 层叠布局
class LearnCascadingLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      // 以下范围是0-1
      alignment:const FractionalOffset(0.5, 0.9),
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage('https://avatars1.githubusercontent.com/u/20458422?s=460&u=62e8eb357234d41eb187749325d62bb764f20027&v=4'),
        ),
        Container(
          decoration: BoxDecoration(
            color:Colors.blueAccent,
          ),
          padding: EdgeInsets.all(5.0),
          child: Text('hello'),
        )
      ],
    );

    return Scaffold(
        appBar: AppBar(title:Text('层叠布局')),
        body: Center(
          child: stack,
        ),
    );
  }
}