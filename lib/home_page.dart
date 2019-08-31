import 'package:bmi_calculator/reusableBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'boxItems.dart';

const activeColor = Colors.blue;
const inactiveColor = Colors.purple;

const bottomAppColor = Colors.pink;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color maleCardColor = inactiveColor;
  Color femaleCardColor = inactiveColor;

  void updateCardColor(Gender clickedGender) {
    if (clickedGender == Gender.male) {
      if (maleCardColor == inactiveColor) {
        maleCardColor = activeColor;
        femaleCardColor = inactiveColor;
      } else {
        femaleCardColor = activeColor;
        maleCardColor = inactiveColor;
      }
    } else {
      if (femaleCardColor == inactiveColor) {
        femaleCardColor = activeColor;
        maleCardColor = inactiveColor;
      } else {
        maleCardColor = activeColor;
        femaleCardColor = inactiveColor;
      }
    }
  }

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
                     maleCardColor==inactiveColor?maleCardColor=activeColor:femaleCardColor=inactiveColor;
                     maleCardColor==activeColor?femaleCardColor=inactiveColor:maleCardColor=activeColor;

                    });
                  },
                  child: ReusableCard(
                      color: maleCardColor,
                      cardChild: BoxItems(FontAwesomeIcons.mars, "Male"))),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    femaleCardColor==inactiveColor?femaleCardColor=activeColor:maleCardColor=inactiveColor;
                    femaleCardColor==activeColor?maleCardColor=inactiveColor:femaleCardColor=activeColor;
                 });
                },
                child: ReusableCard(
                    color: femaleCardColor,
                    cardChild: BoxItems(FontAwesomeIcons.venus, "Female")),
              ),
            )
          ],
        )),
        Expanded(
          child: ReusableCard(
            color: Colors.pink,
          ),
        ),
        Expanded(
            child: Row(
          children: <Widget>[
            Expanded(
                child: ReusableCard(
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
}
enum Gender {male,female}
