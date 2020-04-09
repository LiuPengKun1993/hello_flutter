import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(ListViewLearn());

// 列表练习
class ListViewLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final wordPair = new WordPair.random();
    // return new MaterialApp(
    //   title: 'Welcome to Flutter',
    //   home: new Scaffold(
    //     appBar: new AppBar(
    //       title: new Text('Welcome to Flutter'),
    //     ),
    //     body: new Center(
    //       // child: new Text('Hello World1'),
    //       // child: new Text(wordPair.asPascalCase),
    //       child: new RandomWords(),
    //     ),
    //   ),
    // );
    return Scaffold(
      // 更改应用程序的主题
      // theme: ThemeData(
      //   primaryColor: Colors.white,
      // ),
      body: RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {

  final _suggestions = <WordPair>[];
  // Set比List更合适，因为Set中不允许重复的值。
  final _saved = Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0,color: Colors.red,letterSpacing: 10.0);

  @override
  Widget build(BuildContext context) {
    // final wordPair = WordPair.random();
    // return Text(wordPair.asPascalCase);
    return Scaffold(
      appBar: AppBar(
        title: Text('收藏功能'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
        ],
        // automaticallyImplyLeading:true,
      ),
      body: _buildSuggestions(),
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(
    // MaterialPageRoute 继承自 PageRoute 类，PageRoute 类是一个抽象类，表示占有整个屏幕空间的一个模态路由页面，它还定义了路由构建及切换时过渡动画的相关接口及属性。MaterialPageRoute 是 Material 组件库提供的组件，它可以针对不同平台，实现与平台页面切换动画风格一致的路由切换动画
      MaterialPageRoute(
        // builder 是一个 WidgetBuilder 类型的回调函数，它的作用是构建路由页面的具体内容，返回值是一个widget。我们通常要实现此回调，返回新路由的实例。
        builder: (context) {
          final tiles = _saved.map(
            (pair) {
              return ListTile(
                title: Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            },
          );
          final divided = ListTile.divideTiles(tiles: tiles, context: context,).toList();

          return Scaffold (
            appBar:AppBar(
              title: Text('收藏'),
            ),
            body: ListView(children: divided),
          );
        },
        // fullscreenDialog 表示新的路由页面是否是一个全屏的模态对话框，在 iOS 中，如果 fullscreenDialog 为 true，新页面将会从屏幕底部滑入（而不是水平方向）
        // fullscreenDialog:  true,
      ),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(itemBuilder: (context, i) {
      if (i.isOdd) return Divider();
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
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(
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