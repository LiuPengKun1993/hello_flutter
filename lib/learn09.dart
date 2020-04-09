import 'package:flutter/material.dart';

void main() => runApp(LearnGridView());

// 网格控件：类似于 collectionView
class LearnGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(title: new Text('hello GridView')),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 2.0,
            childAspectRatio: 0.7,
          ),
          children: <Widget>[
            new Image.network('https://dss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=2617297214,2858371489&fm=58&app=83&f=JPEG?w=300&h=400&s=6CC1A946BEC900DE112908B30300D090'),
            new Image.network('https://dss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=3465500627,4087711608&fm=58&app=83&f=JPEG?w=400&h=533&s=1A4FA9445F23AE5F5E6766010300E0DE'),
            new Image.network('https://dss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=2975901083,2518363767&fm=58'),
            new Image.network('https://dss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=4191851377,1755301182&fm=58&s=A0026CB50C134BFF189DDD430300F0E1'),
            new Image.network('https://dss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=3717282104,1079711651&fm=58&s=6A292DC0420F22FA2A73CB08030040CD'),
            new Image.network('https://dss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3527165871,1016449403&fm=58&s=787B20C402B38BC456651C8D0300E088'),
          ],
        ),

        // 官方不太推荐这样写了，很多老项目是这样写的
        // body: GridView.count(
        //   // 每行几个
        //   crossAxisCount: 3,
        //   // 每个item之间的间隔
        //   crossAxisSpacing: 10.0,
        //   // 外部间隔
        //   padding: const EdgeInsets.all(10.0),
        //   children: <Widget>[
        //     const Text('11111'),
        //     const Text('22222'),
        //     const Text('33333'),
        //     const Text('44444'),
        //     const Text('55555'),
        //     const Text('66666'),
        //   ],
        // ),
    );
  }
}