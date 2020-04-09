import 'package:flutter/material.dart';
import 'learn01.dart';
import 'learn02.dart';
import 'learn03.dart';
import 'learn04.dart';
import 'learn05.dart';
import 'learn06.dart';
import 'learn07.dart';
import 'learn08.dart';
import 'learn09.dart';
import 'learn10.dart';
import 'learn11.dart';
import 'learn12.dart';
import 'learn13.dart';
import 'learn14.dart';
import 'learn15.dart';

void main(){
  runApp(
    MaterialApp(
      title:"flutter",
      home:FirstScreen(),
    )
  );
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      "01 逆向传值", 
      "02 正向传值", 
      "03 收藏功能",
      "04 Navigator",
      "05 卡片布局",
      "06 层叠布局",
      "07 垂直布局",
      "08 横向布局",
      "09 网格控件",
      "10 动态列表",
      "11 水平列表",
      "12 垂直列表",
      "13 图片",
      "14 Container",
      "15 TextWidget"
    ];
    final List<StatelessWidget> routeItems = [
        FirstPage(), 
        ProductList(products:List.generate(20, (i)=>Product('商品 $i', '商品详情编号 $i'))),
        ListViewLearn(),
        LearnNavigator(),
        LearnCardLayout(),
        LearnCascadingLayout(),
        LearnVerticalLayout(),
        LearnRowLayout(),
        LearnGridView(),
        LearnDynamicList(items:new List<String>.generate(1000, (i)=>"item $i")),
        HorizontalListView(),
        VerticalListView(),
        LearnContainerImage(),
        LearnContainer(),
        LearnTextWidget(),
      ];
    var body = ListView.builder(
      itemCount: items.length,
      // itemExtent: 50.0,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
      return ListTile(
          title: Text('${items[index]}'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>routeItems[index]));
          },
      );
      },
    );
    return Scaffold(
      appBar: AppBar(title:Text('learn flutter')),
      body: body,
    );
  }
}