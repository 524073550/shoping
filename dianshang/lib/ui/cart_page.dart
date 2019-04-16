import 'package:flutter/material.dart';

class CartPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _CartPage();
  }

}

class _CartPage extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Center(
        child: Text('购物车'),
      ),
    );
  }
}