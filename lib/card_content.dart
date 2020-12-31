
import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  final IconData iconData;

  const CardContent(this.iconData);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        iconData,
        size: 80,
      )
    ]);
  }
}
