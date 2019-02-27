import 'package:flutter/material.dart';

class HomePage_1 extends StatefulWidget {
  @override
  _HomePage_1State createState() => _HomePage_1State();
}

class _HomePage_1State extends State<HomePage_1> {
  @override
  Widget build(BuildContext context) {

    final background = new Stack(
        alignment: const Alignment(-0.9, -0.9),
        children:<Widget>[
          new Opacity(
            opacity: 0.5,
            child: new Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/red.jpg"),fit: BoxFit.cover)
              ),
            ),
          ),
          new Opacity(
            opacity: 0.8,
            child: new Container(
              padding: EdgeInsets.only(left: 40.0, right: 40.0),
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/white.jpg'),centerSlice: new Rect.fromLTRB(0,10,0,10))
              ),
            ),),
          new Text(
            '緣起',style: TextStyle(fontSize: 20,color: Colors.redAccent,fontWeight:  FontWeight.bold),
          ),
          new Positioned(
              left: 18.0,
              right: 18.0,
              top: 57.0,
              child: new Text(
                '2008年韓國擬向聯合國教科文組織提報地理風水申遺，欲將羅盤登錄成為韓國的文化資產，為不讓韓國霸佔華人祖先智慧傳承的羅盤文化，本會於國立雲林科技大學首次舉辦揭開羅經盤奧秘特展。',
                style: TextStyle(fontSize: 18,color: Colors.black),
              )
          )

        ]
    );

    return new Scaffold(
        body: Center(
        child:
        background));
  }
}
