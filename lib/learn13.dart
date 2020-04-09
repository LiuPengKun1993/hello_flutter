import 'package:flutter/material.dart';

void main() => runApp(LearnContainerImage());

// Container image
class LearnContainerImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var container = Container(
                child: new Image.network(
                  'https://avatars1.githubusercontent.com/u/20458422?s=460&u=62e8eb357234d41eb187749325d62bb764f20027&v=4',
                  // 是否重复显示
                  // repeat: ImageRepeat.repeatY,
                  color: Colors.blueAccent,
                  colorBlendMode:BlendMode.plus,
                ),
                width: 400.0,
                height: 600.0,
                color: Colors.red,
              );
    return Scaffold(
      appBar: AppBar(title:Text('image')),
      body: Center(
          child: container,
      ),
    );
  }
}