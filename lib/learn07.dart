import 'package:flutter/material.dart';

void main() => runApp(LearnVerticalLayout());

// 垂直布局
class LearnVerticalLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
              fontSize:25.0,
              color: Color.fromARGB(255, 155, 155, 100),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.wavy,
              decorationColor: Color.fromARGB(255, 100, 100, 100),
              backgroundColor: Color.fromARGB(255, 150, 250, 250),
            );
    return Scaffold(
        appBar: new AppBar(title: new Text('垂直布局')),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('hello1',style: textStyle),
              Expanded(child: Text('flutter',style: textStyle)),
              Text('垂直布局',style: textStyle),
            ],
          ),
        ),
    );
  }
}
