import 'package:flutter/material.dart';

class HomePage_3 extends StatefulWidget {
  @override
  _HomePage_3State createState() => _HomePage_3State();
}

class _HomePage_3State extends State<HomePage_3> {
  @override
  Widget build(BuildContext context) {
    final newsList1 = new ListTile(
      //leading:Icon(Icons.navigation),
      title: Text("易經羅盤研究班報名表", style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text("即日起受理報名"),
      trailing: Icon(Icons.chevron_right),
      onTap: () {},
    );

    final newsList2 = new ListTile(
      //leading:Icon(Icons.navigation),///增加Icon
      title: Text("昊天易經羅盤特展", style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text("星期日休館"),
      trailing: Icon(Icons.chevron_right),
      onTap: () {},
    );

    final newsList3 = new ListTile(
      //leading:Icon(Icons.navigation),
      title: Text("世界最大羅盤", style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text("專題報導"),
      trailing: Icon(Icons.chevron_right),
      onTap: () {},
    );


    final background =
        new Stack(alignment: const Alignment(-0.9, -0.9), children: <Widget>[
      new Opacity(
        opacity: 0.5,
        child: new Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/red.jpg"), fit: BoxFit.cover)),
        ),
      ),
      new Opacity(
        opacity: 0.9,
        child: new Container(
          padding: EdgeInsets.only(left: 40.0, right: 40.0),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/white.jpg'),
                  centerSlice: new Rect.fromLTRB(0, 10, 0, 10))),
        ),
      ),
      new Text(
        '活動消息',
        style: TextStyle(
            fontSize: 20, color: Colors.redAccent, fontWeight: FontWeight.bold),
      ),
      new Positioned(
          top: 50.0,
          bottom: 10.0,
          left: 0.0,
          right: 0.0,
          child: new ListView(
              children: <Widget>[
                newsList1,
                newsList2,
                newsList3,

              ],
            ))
          
    ]);

    /*return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
            shrinkWrap: true,
            children: <Widget>[
              ]));*/

    return Scaffold(
        body: Center(
      child: background,
    ));
  }
}
