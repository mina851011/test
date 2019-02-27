import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Page4 extends StatefulWidget {
  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {

    Image logo = new Image.asset(
      'assets/baseline_person_black_18dp.png',
      width: 60,
      height: 60,
      fit: BoxFit.contain,
    );

    _launchURL() async {
      const url = 'tel:02-2355955';//電話號碼
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    final moneyButton = new ButtonTheme(
        minWidth: 40.0,
        height: 45.0,
        child: RaisedButton.icon(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: () {
          },
          color: Colors.redAccent,
          icon: const Icon(Icons.monetization_on,size: 24,color: Colors.white,),
          label: new Text('儲值年費', style: TextStyle(color: Colors.white,fontSize: 20)),
        )
    );
    final transferButton = new ButtonTheme(
        minWidth: 40.0,
        height: 45.0,
        child: RaisedButton.icon(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: () {
          },
          color: Colors.redAccent,
          icon: const Icon(Icons.record_voice_over,size: 24,color: Colors.white,),
          label: new Text('轉接線上天師', style: TextStyle(color: Colors.white,fontSize: 20)),
        )
    );

    final satisfactionButton = new ButtonTheme(
        minWidth: 40.0,
        height: 45.0,
        child: RaisedButton.icon(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: () {
          },
          color: Colors.redAccent,
          icon: const Icon(Icons.sentiment_satisfied,size: 24,color: Colors.white,),
          label: new Text('滿意度登錄', style: TextStyle(color: Colors.white,fontSize: 20)),
        )
    );

    final serviceButton = new ButtonTheme(
        minWidth: 40.0,
        height: 45.0,
        child: RaisedButton.icon(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed:
            _launchURL,
          color: Colors.redAccent,
          icon: const Icon(Icons.phone,size: 24,color: Colors.white,),
          label: new Text('聯繫客服', style: TextStyle(color: Colors.white,fontSize: 20)),
        )
    );

    final signoutButton = new ButtonTheme(
        minWidth: 40.0,
        height: 40.0,
        child: RaisedButton.icon(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: () {
          },
          color: Colors.redAccent,
          icon: const Icon(Icons.subdirectory_arrow_right,size: 24,color: Colors.white,),
          label: new Text('登出', style: TextStyle(color: Colors.white,fontSize: 20)),
        )
    );


    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
        child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 50.0, right: 50.0),
        children: <Widget>[
          logo,
          SizedBox(height: 48.0),
          moneyButton,
          SizedBox(height: 12.0),
          transferButton,
          SizedBox(height: 12.0),
          satisfactionButton,
          SizedBox(height: 12.0),
          serviceButton,
          SizedBox(height: 12.0),
          signoutButton,
    ],),
    ),);
  }
}
