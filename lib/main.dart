import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      // theme: ThemeData.dark(p),
      /* theme: ThemeData(
          primaryColor: Color(0xFF0A0E21),
          accentColor: Colors.deepPurple,
          scaffoldBackgroundColor: Colors.green,
          textTheme: TextTheme(body1: TextStyle(color: Colors.white))),*/
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.white,
          primaryTextTheme: TextTheme(title: TextStyle(color: Colors.pink)),
          textTheme: TextTheme(
              body1: TextStyle(color: Colors.yellow),
              headline: TextStyle(color: Colors.blueAccent),
              title: TextStyle(color: Colors.black),
              body2: TextStyle(color: Colors.green))),
      home: MyHomePage(title: 'BMI Calculator'),
    );
  }
}
