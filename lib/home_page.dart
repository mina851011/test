import 'package:flutter/material.dart';
import 'package:myapp/home_page1.dart';
import 'package:myapp/page4.dart';


class HomePage extends StatefulWidget {
  static String tag = 'home-page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List<Widget> pages = [
    HomePage1(),
    Container(color: Colors.lightGreen,),
    Container(color: Colors.blueAccent,),
    Page4(),
  ];
  @override
  Widget build(BuildContext context) {

    var barcontroller = new Scaffold(
          bottomNavigationBar: new BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
              currentIndex: index,
              onTap: (int idx){
              setState(() {
                index = idx;
              });
              },
              items: [
                BottomNavigationBarItem(
                  icon: new Icon(Icons.home),
                  title: new Text('首頁'),
                ),
                BottomNavigationBarItem(
                  icon: new Icon(Icons.explore),
                  title: new Text('化卦'),
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.today),
                    title: Text('個人月曆')
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle),
                    title: Text('會員專區')
                )
              ],
            ),
              body: pages[index],

    );

    return barcontroller;
  }
}
