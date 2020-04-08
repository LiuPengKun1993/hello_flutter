import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

// ListView 纵向
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'hello flutter',      
//       home: Scaffold(
//         appBar: new AppBar(title: new Text('hello flutter')),
//         body: new ListView(
//           children:<Widget>[
//             new Image.network("https://cdn.pixabay.com/photo/2020/03/18/14/48/clouds-4944276_1280.jpg"),
//             new Image.network("https://cdn.pixabay.com/photo/2017/08/29/12/03/accommodation-2693042_1280.jpg"),
//             new Image.network("https://cdn.pixabay.com/photo/2017/12/21/12/12/cat-3031684__480.jpg"),
//             new Image.network("https://cdn.pixabay.com/photo/2020/03/24/16/17/mask-4964590__480.png"),
//             // new ListTile(
//             //   leading:new Icon(Icons.access_alarm),
//             //   title: new Text('access_alarm'),
//             // ),
//             // new ListTile(
//             //   leading:new Icon(Icons.account_balance),
//             //   title: new Text('account_balance'),
//             // ),
//             // new ListTile(
//             //   leading:new Icon(Icons.add_to_photos),
//             //   title: new Text('add_to_photos', style: new TextStyle(color:Colors.red)),
//             // )
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Container image
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var container = Container(
//                 child: new Image.network(
//                   'https://avatars1.githubusercontent.com/u/20458422?s=460&u=62e8eb357234d41eb187749325d62bb764f20027&v=4',
//                   // 是否重复显示
//                   // repeat: ImageRepeat.repeatY,
//                   color: Colors.blueAccent,
//                   colorBlendMode:BlendMode.plus,
//                 ),
//                 width: 400.0,
//                 height: 600.0,
//                 color: Colors.red,
//               );
//         return MaterialApp(
//           title: 'Container Widget',
//           home: Scaffold(
//             body: Center(
//               child: container,
//         ),
//       ),
//     );
//   }
// }

// Container Widget 2
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var textStyle = TextStyle(
//                 fontSize:25.0,
//                 color: Color.fromARGB(255, 50, 50, 50),
//                 decoration: TextDecoration.underline,
//                 decorationStyle: TextDecorationStyle.dashed,
//                 decorationColor: Color.fromARGB(255, 100, 100, 100),
//               );
//     var container = Container(
//                 child: new Text('吾乃生于乱世中，自当斩破尘埃。受尽苦难而不厌，此乃阿修罗之道。', style: textStyle,),
//                 alignment: Alignment.topLeft,
//                 width: 500.0,
//                 height: 300.0,
//                 // 内边距
//                 padding: const EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),
//                 // 外边距
//                 margin: const EdgeInsets.all(10.0),
//                 decoration: new BoxDecoration(
//                   // 线性渐变
//                   gradient:const LinearGradient(
//                     colors:[Colors.blueAccent, Colors.purpleAccent, Colors.blueGrey]
//                   ),
//                   // 边框
//                   border: Border.all(width:5.0, color:Colors.blue[200]),
//                 ),
//               );
//         return MaterialApp(
//           title: 'Container Widget',
//           home: Scaffold(
//             body: Center(
//               child: container,
//         ),
//       ),
//     );
//   }
// }

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

// text Widget
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var textStyle = TextStyle(
//               fontSize:25.0,
//               color: Color.fromARGB(255, 155, 155, 100),
//               decoration: TextDecoration.underline,
//               decorationStyle: TextDecorationStyle.wavy,
//               decorationColor: Color.fromARGB(255, 100, 100, 100),
//               backgroundColor: Color.fromARGB(255, 150, 250, 250),
//             );
//     return MaterialApp(
//       title: 'text Widget',
//       home: Scaffold(
//         body: Center(
//           child: Text(
//             '吾乃生于乱世中，自当斩破尘埃。受尽苦难而不厌，此乃阿修罗之道。',
//             textAlign: TextAlign.left,
//             maxLines: 1,
//             overflow: TextOverflow.ellipsis,
//             style: textStyle
//           ),
//         ),
//       ),
//     );
//   }
// }

// 列表练习
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // final wordPair = new WordPair.random();
//     // return new MaterialApp(
//     //   title: 'Welcome to Flutter',
//     //   home: new Scaffold(
//     //     appBar: new AppBar(
//     //       title: new Text('Welcome to Flutter'),
//     //     ),
//     //     body: new Center(
//     //       // child: new Text('Hello World1'),
//     //       // child: new Text(wordPair.asPascalCase),
//     //       child: new RandomWords(),
//     //     ),
//     //   ),
//     // );
//     return new MaterialApp(
//       title: '干杯',
//       // 更改应用程序的主题
//       theme: new ThemeData(
//         primaryColor: Colors.white,
//       ),
//       home: new RandomWords(),
//     );
//   }
// }

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {

  final _suggestions = <WordPair>[];
  // Set比List更合适，因为Set中不允许重复的值。
  final _saved = Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0,color: Colors.red,letterSpacing: 10.0);

  @override
  Widget build(BuildContext context) {
    // final wordPair = new WordPair.random();
    // return new Text(wordPair.asPascalCase);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('首页'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved),
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(
    // MaterialPageRoute 继承自 PageRoute 类，PageRoute 类是一个抽象类，表示占有整个屏幕空间的一个模态路由页面，它还定义了路由构建及切换时过渡动画的相关接口及属性。MaterialPageRoute 是 Material 组件库提供的组件，它可以针对不同平台，实现与平台页面切换动画风格一致的路由切换动画
      new MaterialPageRoute(
        // builder 是一个 WidgetBuilder 类型的回调函数，它的作用是构建路由页面的具体内容，返回值是一个widget。我们通常要实现此回调，返回新路由的实例。
        builder: (context) {
          final tiles = _saved.map(
            (pair) {
              return new ListTile(
                title: new Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            },
          );
          final divided = ListTile.divideTiles(tiles: tiles, context: context,).toList();

          return new Scaffold (
            appBar:new AppBar(
              title: new Text('收藏'),
            ),
            body: new ListView(children: divided),
          );
        },
        // fullscreenDialog 表示新的路由页面是否是一个全屏的模态对话框，在 iOS 中，如果 fullscreenDialog 为 true，新页面将会从屏幕底部滑入（而不是水平方向）
        fullscreenDialog: true,
      ),
    );
  }

  Widget _buildSuggestions() {
    return new ListView.builder(itemBuilder: (context, i) {
      if (i.isOdd) return new Divider();
      final index = i ~/2;
      if (index >= _suggestions.length) {
        _suggestions.addAll(generateWordPairs().take(10));
      }
      return _buildRow(_suggestions[index]);

    },padding: const EdgeInsets.all(16.0));
  }

  Widget _buildRow(WordPair pair) {
    // 检查确保单词对还没有添加到收藏夹中
    final alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }
}