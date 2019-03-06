import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {

    final reservationButton = new FloatingActionButton.extended(
      onPressed: () {
      },
      foregroundColor: Colors.white,
      backgroundColor: Colors.amber,
      icon: new Icon(Icons.receipt,color: Colors.red,),
      label: new Text('預約化卦',style: new TextStyle(fontSize: 20),),
    );

    final movieButton = new FloatingActionButton.extended(
      onPressed: () {
      },
      foregroundColor: Colors.white,
      backgroundColor: Colors.amber,
      icon: new Icon(Icons.local_movies,color: Colors.red,),
      label: new Text('影音動畫',style: new TextStyle(fontSize: 20),),
    );

    final videoButton = new FloatingActionButton.extended(
      onPressed: () {
      },
      foregroundColor: Colors.white,
      backgroundColor: Colors.amber,
      icon: new Icon(Icons.videocam,color: Colors.red,),
      label: new Text('視訊跟拜',style: new TextStyle(fontSize: 20),),
    );

    final commissionButton = new FloatingActionButton.extended(
      onPressed: () {
      },
      foregroundColor: Colors.white,
      backgroundColor: Colors.amber,
      icon: new Icon(Icons.people,color: Colors.red,),
      label: new Text('全程委託',style: new TextStyle(fontSize: 20),),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 70.0, right: 70.0),
          children: <Widget>[
            reservationButton,
            SizedBox(height: 15.0),
            movieButton,
            SizedBox(height: 15.0),
            videoButton,
            SizedBox(height: 15.0),
            commissionButton
          ],),
      ),);
  }
}
