import 'package:bmi_calculator/reusableBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'boxItems.dart';

const activeColor = Colors.blue;
const inactiveColor = Colors.black54;

const bottomAppColor = Colors.pink;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          child: Column(children: <Widget>[
        Expanded(
            child: Row(
          children: <Widget>[
            Expanded(
                child: GestureDetector(
              onTap: () {
                setState(() {
                  updateCardColor(1);
                });
              },
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateCardColor(1);
                    });
                  },
                  child: ReusableCard(color: Colors.pink)),
            )),
            Expanded(
              child: ReusableCard(color: Colors.pink),
            )
          ],
        )),
        Expanded(
          child: ReusableCard(
            color: Colors.pink,
            cardChild: BoxItems(FontAwesomeIcons.mars, "Male"),
          ),
        ),
        Expanded(
            child: Row(
          children: <Widget>[
            Expanded(
                child: ReusableCard(
              cardChild: BoxItems(FontAwesomeIcons.venus, "Female"),
              color: Colors.pink,
            )),
            Expanded(
              child: ReusableCard(color: Colors.pink),
            )
          ],
        ))
      ])),
    );
  }

  Color maleCardColor = inactiveColor;
  Color femaleCardColor = inactiveColor;

  void updateCardColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveColor) {
        maleCardColor = activeColor;
        femaleCardColor = inactiveColor;
      } else {
        femaleCardColor = activeColor;
        maleCardColor = inactiveColor;
      }
    }
  }
}
