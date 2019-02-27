import 'package:flutter/material.dart';

class HomePage_2 extends StatefulWidget {
  @override
  _HomePage_2State createState() => _HomePage_2State();
}

class _HomePage_2State extends State<HomePage_2> {
  @override
  Widget build(BuildContext context) {

    List<String> nameItems = <String>[
      '小羅盤(8.6cm X 8.6cm)', '封卦羅盤(42.5cm X 42.5cm)', '普通羅盤(36.5cm X 36.5cm)', '108圈大羅盤(直徑152cm)'
    ];

    List<Widget> items = List.generate(4, (index){
      var url = "00" + (index + 1).toString();
      return new Container(
        child: new Stack(
          alignment: Alignment(0.0, 1.0),
          children: <Widget>[
            new Image.asset("assets/images/$url.jpg"),
            new Text(nameItems[index],style: new TextStyle(fontSize: 13),)
          ],
        )
      );
    });



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
            '羅盤種類',style: TextStyle(fontSize: 20,color: Colors.redAccent,fontWeight:  FontWeight.bold),
          ),
          new Positioned(
              top: 70.0,
              left: 10.0,
              right: 10.0,
              bottom: 18.0,
              child: new GridView.count(
                crossAxisCount: 2,
                children: items,
                mainAxisSpacing: 20.0,
                crossAxisSpacing: 20.0,
                padding: EdgeInsets.all(15.0),
              )
          )

        ]

    );


    return new Scaffold(
        body: Center(
            child:
            background,
            ));
  }
}

