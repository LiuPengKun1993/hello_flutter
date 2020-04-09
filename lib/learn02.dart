import 'package:flutter/material.dart';

// 页面之间的正向传值
// 将商品列表的属性抽象成类
class Product {
  final String title;
  final String description;
  Product(this.title, this.description);
}

// // 入口文件
void main(){
  runApp(
    MaterialApp(
      title: '导航的数据传递与接收',
      // 传递数组
      home: ProductList(
        products:List.generate(20, (i)=>Product('商品 $i', '商品详情编号 $i'))
      ),
    )
  );
}

class ProductList extends StatelessWidget {
  final List<Product> products;

  ProductList({Key key, @required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('正向传值')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder:(context, index){
          return ListTile(
            title: Text(products[index].title),
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                return new ProductDetails(title:products[index].description);
              }));
            },
          );
        },
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  final String title;
  const ProductDetails({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('商品详情')),
      body: Center(
        child:Text(title),
      ),
    );
  }
}