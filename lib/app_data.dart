import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppData {
  static final AppData _appData = new AppData._internal();

  IconData selectedGender = FontAwesomeIcons.male;
  int height = 180;
  int weight = 75;
  int age = 21;

  factory AppData() {
    return _appData;
  }
  AppData._internal();
}
final appData = AppData();