import 'package:flutter/cupertino.dart';

class BoxItems extends StatelessWidget {
  final IconData fontIcons;
  final String bottomText;

  const BoxItems(this.fontIcons, this.bottomText);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(fontIcons, size: 80.0),
        SizedBox(height: 20.0),
        Text(bottomText,textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20.0),)
      ],
    );
  }
}
