import 'package:flutter/cupertino.dart';

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
