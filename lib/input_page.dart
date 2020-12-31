import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'app_data.dart';
import 'bottom_button.dart';
import 'card_content.dart';
import 'constants.dart';
import 'plus_minus_card.dart';
import 'reusable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    var formArguments;
    var maleIcon = FontAwesomeIcons.male;
    var femaleIcon = FontAwesomeIcons.female;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI CALCULATOR',
            style: appTitleTextStyle,
          ),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: getGenderCard(maleIcon)),
                    Expanded(child: getGenderCard(femaleIcon)),
                  ],
                ),
              ),
              Expanded(
                  child: ReusableCard(
                colour: activeCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: labelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          appData.height.toString(),
                          style: valueTextStyle,
                        ),
                        Text(
                          'cm',
                          style: labelTextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: inActiveCardColor,
                          activeTrackColor: Colors.white,
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15),
                          thumbColor: bottomContainerColor),
                      child: Slider(
                        value: appData.height.toDouble(),
                        onChanged: onSliderChanged,
                        min: 100,
                        max: 260,
                      ),
                    )
                  ],
                ),
              )),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: PlusMinusCard(title: weightText)),
                    Expanded(child: PlusMinusCard(title: ageText)),
                  ],
                ),
              ),
              BottomButton(
                  text: 'CALCULATE',
                  routeName: 'results',
                  arguments: formArguments),
            ]));
  }

  ReusableCard getGenderCard(IconData icon) {
    return ReusableCard(
        colour: icon == appData.selectedGender
            ? activeCardColor
            : inActiveCardColor,
        cardChild:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CardContent(icon),
          SizedBox.fromSize(
            size: Size(20, 20),
          ),
          Text('MALE')
        ]),
        onTap: () {
          setState(() {
            appData.selectedGender = icon;
          });
        });
  }

  void onSliderChanged(double changedValue) {
    setState(() {
      appData.height = changedValue.round();
    });
  }
}
