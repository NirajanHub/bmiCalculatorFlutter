import 'package:bmi_calculator/reusableBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'boxItems.dart';

import 'constatnts.dart';

const bottomAppColor = Colors.pink;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int height = 180;

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
                      maleCardColor == kInactiveColor
                          ? maleCardColor = kActiveColor
                          : femaleCardColor = kInactiveColor;
                      maleCardColor == kActiveColor
                          ? femaleCardColor = kInactiveColor
                          : maleCardColor = kActiveColor;
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
                    femaleCardColor == kInactiveColor
                        ? femaleCardColor = kActiveColor
                        : maleCardColor = kInactiveColor;
                    femaleCardColor == kActiveColor
                        ? maleCardColor = kInactiveColor
                        : femaleCardColor = kActiveColor;
                  });
                },
                child: ReusableCard(
                    color: femaleCardColor,
                    cardChild: BoxItems(FontAwesomeIcons.venus, "Female")),
              ),
            )
          ],
        )),
        //scroll bar
        Expanded(
            child: ReusableCard(
          color: Colors.pink,
          cardChild: Column(children: <Widget>[
            Container(
              child: Text("HEIGHT", style: kLabelTextType),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.center,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                Text(height.toString(), style: TextStyle(fontSize: 80.0)),
                Text("cm", style: kLabelTextType)
              ],
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                  inactiveTrackColor: Colors.black12,
                  activeTrackColor: Colors.white,
                  thumbColor: Colors.blue,
                  overlayColor: Colors.black,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)),
              child: Slider(
                  value: height.toDouble(),
                  max: 220.0,
                  min: 120.0,
                  onChanged: (double newValue) {
                    setState(() {
                      height = newValue.round();
                    });
                  }),
            )
          ]),
        )),
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

  Color maleCardColor = kInactiveColor;
  Color femaleCardColor = kInactiveColor;

  void updateCardColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == kInactiveColor) {
        maleCardColor = kActiveColor;
        femaleCardColor = kInactiveColor;
      } else {
        femaleCardColor = kActiveColor;
        maleCardColor = kInactiveColor;
      }
    } else {
      if (femaleCardColor == kInactiveColor) {
        femaleCardColor = kActiveColor;
        maleCardColor = kInactiveColor;
      } else {
        maleCardColor = kActiveColor;
        femaleCardColor = kInactiveColor;
      }
    }
  }
}

enum Gender { male, female }
