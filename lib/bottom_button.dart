
import 'package:flutter/material.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {
  final String text;

  final String routeName;

 final Object arguments;

  const BottomButton({@required this.text, @required this.routeName, this.arguments});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.popAndPushNamed(context, this.routeName, arguments: this.arguments);
      },
      child: Container(
        color: bottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        height: 50,
        child: Center(
          child: Text(this.text, style: largeButtonTextStyle),
        ),
        padding: EdgeInsets.only(bottom: 20),
      ),
    );
  }
}