import 'package:flutter/material.dart';

void main() => runApp(LearnTextWidget());

// text Widget
class LearnTextWidget extends StatelessWidget {
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
      appBar: AppBar(title:Text('TextWidget')),
      body: Center(
        child: Text(
          '吾乃生于乱世中，自当斩破尘埃。受尽苦难而不厌，此乃阿修罗之道。',
          textAlign: TextAlign.left,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: textStyle
        ),
      ),
    );
  }
}