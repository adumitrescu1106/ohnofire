import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());



//class AppData {
//  static final AppData _appData = new AppData._internal();
//
//  AdouaPagina page;
//  factory AppData() {
//    return _appData;
//  }
//  AppData._internal();
//}
//final appData = AppData();

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(home: new Home());
  }
}

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomeScreen();
  }
}

class AdouaPagina extends  StatelessWidget{
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile "),
      ),
      body: Container(
          decoration: BoxDecoration (
              gradient: LinearGradient (
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.1, 0.5, 0.7, 0.9],
                colors: [
                  Color(0xFF990000),
                  Color(0xFF660000),
                  Color(0xFF360000),
                  Color(0xFF000000),
                ],
              )
          ),
          child: new ListView(
            children: <Widget>[
              new TextFormField(
                style: new TextStyle(color: Colors.white),
                autovalidate: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.account_circle, color: Colors.white,),
                  hintText: 'Type your name here',
                  labelText: 'Name',
                  hintStyle: TextStyle(color: Colors.white),
                  labelStyle: TextStyle(color: Colors.white),
                ),
                onSaved: (String value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String value) {
                  return value.contains('@') ? 'Do not use the @ char.' : null;
                },
              ),
              new TextFormField(
                style: new TextStyle(color: Colors.white),
                autovalidate: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.mail, color: Colors.white,),
                  hintText: 'Type your email address here',
                  hintStyle: TextStyle(color: Colors.white),
                  labelText: 'Email Address',
                  labelStyle: TextStyle(color: Colors.white),
                ),
                onSaved: (String value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String value) {
                  return value.contains('@') ? 'Do not use the @ char.' : null;
                },
              ),
              new TextFormField(
                style: new TextStyle(color: Colors.white),
                autovalidate: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.calendar_today, color: Colors.white,),
                  hintText: 'Type your age here',
                  labelText: 'Age',
                  hintStyle: TextStyle(color: Colors.white),
                  labelStyle: TextStyle(color: Colors.white),
                ),
                onSaved: (String value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String value) {
                  return value.contains('@') ? 'Do not use the @ char.' : null;
                },
              ),
              new TextFormField(
                style: new TextStyle(color: Colors.white),
                autovalidate: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.straighten, color: Colors.white,),
                  hintText: 'Type your height here',
                  labelText: 'Height (cm)',
                  hintStyle: TextStyle(color: Colors.white),
                  labelStyle: TextStyle(color: Colors.white),
                ),
                onSaved: (value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (value) {
                  return value.contains('@') ? 'Do not use the @ char.' : null;
                },
              ),

              new TextFormField(
                style: new TextStyle(color: Colors.white),
                autovalidate: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.fitness_center, color: Colors.white,),
                  hintText: 'Type ypur weight here',
                  labelText: 'Weight',
                  hintStyle: TextStyle(color: Colors.white),
                  labelStyle: TextStyle(color: Colors.white),
                ),
                onSaved: (String value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String value) {
                  return value.contains('@') ? 'Do not use the @ char.' : null;
                },
              ),
            ],
          )
      ),
    );
  }
}

class HomeScreen extends State<Home> {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container (
        decoration: BoxDecoration (
            gradient: LinearGradient (
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.1, 0.5, 0.7, 0.9],
              colors: [
                Color(0xFF990000),
                Color(0xFF660000),
                Color(0xFF360000),
                Color(0xFF000000),
              ],
            )
        ),
        child: Center (
          child: new Container (
            // alignment: Alignment.center,
            child: new Column (
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Container (
                    decoration: BoxDecoration (
                      color: Colors.black.withOpacity(0.4),
                    ),
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan (
                              text: "WorldAlert",
                              style: TextStyle(fontSize: 40)
                          ),
                          TextSpan(
                            text: "\n      Hello there, User! We hope you are happy & healthy today!\n",
                          ),
                          WidgetSpan(
                            child: Icon(Icons.add, size: 14),
                          ),
                          TextSpan(
                            text: "to add",
                          ),
                        ],
                      ),
                    ),
                  ),
                  new ButtonTheme(
                    minWidth: 170.0,
                    height: 100.0,
                    focusColor: Colors.black,
                    hoverColor: Colors.black,
                    child: OutlineButton(
                      child: new Text("Alerts"),
                      color: Colors.black.withOpacity(0.1),
                      textColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      splashColor: Colors.black54,
                      onPressed: () {


                      },
                      borderSide: BorderSide(width: 1.0, color: Colors.grey),
                      highlightedBorderColor: Colors.black,
                    ),
                  ),

                  new ButtonTheme(
                    minWidth: 170.0,
                    height: 100.0,
                    focusColor: Colors.black,
                    hoverColor: Colors.black,
                    child: OutlineButton(
                      child: new Text("Report a Fire"),
                      color: Colors.black.withOpacity(0.1),
                      textColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      splashColor: Colors.black54,
                      onPressed: () {},
                      borderSide: BorderSide(width: 1.0, color: Colors.grey),
                      highlightedBorderColor: Colors.black,
                    ),
                  ),
                  new ButtonTheme(
                    minWidth: 170.0,
                    height: 100.0,
                    focusColor: Colors.black,
                    hoverColor: Colors.black,
                    child: OutlineButton(
                      child: new Text("Maps"),
                      color: Colors.black.withOpacity(0.1),
                      textColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      splashColor: Colors.black54,
                      onPressed: () {},
                      borderSide: BorderSide(width: 1.0, color: Colors.grey),
                      highlightedBorderColor: Colors.black,
                    ),
                  ),
                  new ButtonTheme(
                    minWidth: 170.0,
                    height: 100.0,
                    focusColor: Colors.black,
                    hoverColor: Colors.black,
                    child: OutlineButton(
                      child: new Text("Profile"),
                      color: Colors.black.withOpacity(0.1),
                      textColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      splashColor: Colors.black54,
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(builder: (context) => AdouaPagina()),
                        );
                      },
                      borderSide: BorderSide(width: 1.0, color: Colors.grey),
                      highlightedBorderColor: Colors.black,
                    ),
                  ),
                ]
            ),

          ),
        ),
      ),
    );
  }
}

