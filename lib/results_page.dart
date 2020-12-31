import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

import 'bottom_button.dart';
import 'calculator_brain.dart';

class ResultsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var calculatorBrain = new CalculatorBrain();
    var bmi = calculatorBrain.calculateAndGetBMI();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: appTitleTextStyle,
        ),
      ),
      body: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Center(child: Text('Your Results', style: resultsTitleTextStyle))),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  colour: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        calculatorBrain.getResult(),
                        style: labelTextStyle.copyWith(
                          fontSize: 30
                        ),
                      ),
                      Text(
                        bmi,
                        style: bmiResultStyle,
                      ),
                      Text(
                        calculatorBrain.getCommentary(),
                        style: labelTextStyle.copyWith(
                            fontSize: 30
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
              child: BottomButton(text: 'RECALCULATE', routeName: '/'),
            )
          ]),
    );
  }
}
