import 'package:bmi_calculator/app_data.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

class PlusMinusCard extends StatefulWidget {
  final String title;

  const PlusMinusCard({@required this.title});
  @override
  State<StatefulWidget> createState() => _PlusMinusCardState();
}

class _PlusMinusCardState extends State<PlusMinusCard> {

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      colour: activeCardColor,
      cardChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: labelTextStyle,
          ),
          Text(
            getValue(),
            style: valueTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RoundIconButton(
                onPressed: increase,
                icon: FontAwesomeIcons.plus,
              ),
              RoundIconButton(
                onPressed: decrease,
                icon: FontAwesomeIcons.minus,
              )
            ],
          )
        ],
      ),
    );
  }

  increase() {
    setState(() {
      if(weightText == widget.title) {
          appData.weight++;
      }else if(ageText == widget.title){
         appData.age++;
      }
    });
  }

  decrease() {
    setState(() {
      if(weightText == widget.title) {
        appData.weight--;
      }else if(ageText == widget.title){
        appData.age--;
      }
    });
  }

  String getValue() {
    if(weightText == widget.title) {
      return appData.weight.toString();
    }else if(ageText == widget.title){
      return appData.age.toString();
    }
  }
}
