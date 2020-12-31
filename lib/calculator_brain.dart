import 'dart:math';

import 'package:bmi_calculator/app_data.dart';

class CalculatorBrain {
  double _bmi;

  String calculateAndGetBMI() {
    _bmi = appData.weight / pow(appData.height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getCommentary() {
    if (_bmi >= 25) {
      return 'Please workout and shed your weight!!!';
    } else if (_bmi > 18.5) {
      return 'You are doing good. Keep working hard!!!';
    } else {
      return 'Never say no to Food. It gets hurt!!!';
    }
  }
}
