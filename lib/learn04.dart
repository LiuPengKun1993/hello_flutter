import 'package:flutter/material.dart';

// 普通导航演示
void main(){
  runApp(
    MaterialApp(
      title:"导航演示01",
      home:LearnNavigator(),
    )
  );
}

class LearnNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('普通页面跳转')),
      body: Center(
        child:RaisedButton(
          onPressed: (){
            Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
              return new SecondScreen();
            }));
          },
          child: Text('点击跳转'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('跳转的界面')),
      body: Center(
        child:RaisedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text('返回'),
        ),
      ),
    );
  }
}