import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  static const bottomAppColor = Colors.pink;

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
            Expanded(child: ReusableCard(color: Colors.pink)),
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
}

class BoxItems extends StatelessWidget {
  final IconData fontIcons;
  final String bottomText;

  const BoxItems(this.fontIcons, this.bottomText);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(fontIcons),
        SizedBox(height: 20.0),
        Text(bottomText)
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;

  ReusableCard({@required this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: cardChild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.black54,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10.0)));
  }
}
