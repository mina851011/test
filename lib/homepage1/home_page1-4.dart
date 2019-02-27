import 'package:flutter/material.dart';

class HomePage_4 extends StatefulWidget {
  @override
  _HomePage_4State createState() => _HomePage_4State();
}

class _HomePage_4State extends State<HomePage_4> {
  @override
  Widget build(BuildContext context) {

    List<Widget> items = List.generate(3, (index){
      var url = "00" + (index + 5).toString();
      return new Container(
            child:
              new Image.asset("assets/images/$url.jpg"),
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
            '活動剪影',style: TextStyle(fontSize: 20,color: Colors.redAccent,fontWeight:  FontWeight.bold),
          ),
         new Positioned(
           top: 60.0,
             bottom: 18.0,
             left: 20.0,
             right: 20.0,
             child: GridView.count(
               crossAxisCount: 1,
               children: items,
               mainAxisSpacing: 20.0,//左右
               crossAxisSpacing: 10.0,//上下間距
               padding: EdgeInsets.all(15.0),
             ),
         )
          ]



    );


    return new Scaffold(
      body: background,
    );
  }
}
