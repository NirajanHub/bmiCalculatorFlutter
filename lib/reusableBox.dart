import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
