import 'package:flutter/material.dart';

void main() => runApp(LearnContainer());

// Container Widget 2
class LearnContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
                fontSize:25.0,
                color: Color.fromARGB(255, 50, 50, 50),
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed,
                decorationColor: Color.fromARGB(255, 100, 100, 100),
              );
    var container = Container(
                child: new Text('吾乃生于乱世中，自当斩破尘埃。受尽苦难而不厌，此乃阿修罗之道。', style: textStyle,),
                alignment: Alignment.topLeft,
                width: 500.0,
                height: 300.0,
                // 内边距
                padding: const EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),
                // 外边距
                margin: const EdgeInsets.all(10.0),
                decoration: new BoxDecoration(
                  // 线性渐变
                  gradient:const LinearGradient(
                    colors:[Colors.blueAccent, Colors.purpleAccent, Colors.blueGrey]
                  ),
                  // 边框
                  border: Border.all(width:5.0, color:Colors.blue[200]),
                ),
              );
    return Scaffold(
      appBar: AppBar(title:Text('Container')),
      body: Center(
        child: container,
      ),
    );
  }
}

// Container Widget 1
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//         var textStyle = TextStyle(
//               fontSize:25.0,
//               color: Color.fromARGB(255, 50, 50, 50),
//               decoration: TextDecoration.underline,
//               decorationStyle: TextDecorationStyle.dashed,
//               decorationColor: Color.fromARGB(255, 100, 100, 100),
//             );
//     return MaterialApp(
//       title: 'Container Widget',
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             child: new Text('吾乃生于乱世中，自当斩破尘埃。受尽苦难而不厌，此乃阿修罗之道。', style: textStyle,),
//             alignment: Alignment.centerLeft,
//             width: 500.0,
//             height: 300.0,
//             color: Colors.lightBlueAccent,
//           ),
//         ),
//       ),
//     );
//   }
// }