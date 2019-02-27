import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:myapp/home_page.dart';

const appName = '登錄生辰資料';
int groupValue;

void main() => runApp(MaterialApp(
      title: appName,
      home: FreeRegisterPage(),
      theme: ThemeData.light().copyWith(
          inputDecorationTheme:
              InputDecorationTheme(border: OutlineInputBorder())),
    ));

class FreeRegisterPage extends StatefulWidget {
  static String tag = 'free-register-page';

  @override
  _FreeRegisterPageState createState() => new _FreeRegisterPageState();
}

class _FreeRegisterPageState extends State<FreeRegisterPage> {
  @override
  Widget build(BuildContext context) {
    final name = TextFormField(
      autofocus: false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final gender = new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Text(
          '男',
          style: new TextStyle(fontSize: 16.0),
        ),
        new Radio(
          groupValue: groupValue,
          onChanged: (int e) => something(e),
          activeColor: Colors.red,
          value: 1,
        ),
        new Text(
          '女',
          style: new TextStyle(fontSize: 16.0),
        ),
        new Radio(
          groupValue: groupValue,
          onChanged: (int e) => something(e),
          activeColor: Colors.red,
          value: 2,
        ),
      ],
    );

    final formats = {
      InputType.both: DateFormat("EEEE, MMMM d, yyyy 'at' h:mma"),
      InputType.date: DateFormat('yyyy-MM-dd'),
      InputType.time: DateFormat("HH:mm"),
    };

    // Changeable in demo
    InputType inputType = InputType.both;
    bool editable = true;
    DateTime date;

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(HomePage.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.redAccent,
        child: Text('送出資料', style: TextStyle(color: Colors.white)),
      ),
    );

    return Scaffold(
        appBar: AppBar(title: Text(appName)),
        body: Padding(
            padding: EdgeInsets.all(16.0),
            child: ListView(children: <Widget>[
              new Text(
                '姓名',
                style:
                    new TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              name,
              SizedBox(height: 8.0),
              new Text(
                '性別',
                style:
                    new TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              gender,
              new Text(
                '生日',
                style:
                    new TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              DateTimePickerFormField(
                inputType: inputType,
                format: formats[inputType],
                editable: editable,
                decoration: InputDecoration(
                    labelText: 'Date/Time', hasFloatingPlaceholder: false),
                onChanged: (dt) => setState(() => date = dt),
              ),
              SizedBox(height: 24.0),
              loginButton,
            ])));
  }

  void something(int e) {
    setState(() {
      if (e == 1) {
        groupValue = 1;
      } else if (e == 2) {
        groupValue = 2;
      }
    });
  }
}
