import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: '逆向传值',
      home: FirstPage(),
    )
  );
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('逆向传值A')),
      body: Center(
        child: routeButton(),
      ),
    );
  }
}

class routeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: (){_navigatorSecondPage(context);},
      child: Text('点击跳转'),
    );
  }

  _navigatorSecondPage(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder:(context)=>SecondPage())
    );
    Scaffold.of(context).showSnackBar(SnackBar(content:Text('$result')));
  }
}

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('逆向传值B')),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: (){
              Navigator.pop(context,'我是索隆');
            },
            child: Text('索隆'),
          ),
          RaisedButton(
            onPressed: (){
              Navigator.pop(context, '我是路飞');
            },
            child: Text('路飞'),
          ),
        ],
      ),
    );
  }
}