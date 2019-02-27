import 'package:flutter/material.dart';
import 'package:myapp/homepage1/home_page1-1.dart';
import 'package:myapp/homepage1/home_page1-2.dart';
import 'package:myapp/homepage1/home_page1-3.dart';
import 'package:myapp/homepage1/home_page1-4.dart';

class HomePage1 extends StatefulWidget {
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {

    var tabController = new DefaultTabController(
        length: 4,
        child: new Scaffold(
            appBar: new AppBar(
              title: new Text("首頁"),
              bottom: new TabBar(
                tabs: <Widget>[

                  new Tab(
                      child: new Text('認識羅盤')
                  ),
                  new Tab(
                      child: new Text('羅盤圖書')
                  ),
                  new Tab(
                      child: new Text('活動消息')
                  ),
                  new Tab(
                      child: new Text('活動剪影')
                  ),
                ],),

            ),
          body: new TabBarView(
          children: [
          HomePage_1(),
          HomePage_2(),
          HomePage_3(),
          HomePage_4(),
          ],
        ),
          ),

              );


    return tabController;
    }
}
