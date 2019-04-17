import 'package:flutter/material.dart';
import 'package:dianshang/config/apiservice.dart';
class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _HomePage();
  }

}

class _HomePage extends State<HomePage> {
  String homePageContent = '正在获取数据';

  @override
  void initState() {
    getHomePageContent().then((val){
      setState(() {
        homePageContent = val.toString();
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(

      body: new Center(
        child: Text('homePageContent'),
      ),
    );
  }
}