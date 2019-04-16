import 'package:flutter/material.dart';


class MemberPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MemberPage();
  }

}

class _MemberPage extends State<MemberPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: Text('会员中心'),
      ),
    );
  }
}