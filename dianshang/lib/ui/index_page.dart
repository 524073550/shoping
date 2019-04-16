import 'package:dianshang/ui/cart_page.dart';
import 'package:dianshang/ui/categroy_page.dart';
import 'package:dianshang/ui/home_page.dart';
import 'package:dianshang/ui/member_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IndexPageState();
  }
}

class _IndexPageState extends State<IndexPage> {
  final List<BottomNavigationBarItem> bottomBar = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), title: Text('首页')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.search), title: Text('分类')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.shopping_cart), title: Text('购物车')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.profile_circled), title: Text('会员中心')),
  ];

  final List<Widget> pages = [
    HomePage(),CategroyPage(),CartPage(),MemberPage()
  ];

  int currentIndex = 0;
  var currentPage;
  @override
  void initState() {
    currentPage = pages[currentIndex];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex:currentIndex ,
        items:bottomBar ,
        onTap:(index){
          setState(() {
            currentIndex = index;
            currentPage = pages[currentIndex];
          });
        } ,
      ),
      body: currentPage,
    );
  }
}
