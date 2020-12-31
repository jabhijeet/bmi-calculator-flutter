import 'package:flutter/material.dart';

import 'input_page.dart';
import 'results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appColor = Color(0xFF0A0E21);
    return MaterialApp(
      initialRoute: '/',
      theme: ThemeData.dark().copyWith(
        primaryColor: appColor,
        scaffoldBackgroundColor: appColor,
      ),
      routes: getRoutes(),
    );
  }

  Map<String, WidgetBuilder> getRoutes() => {
        '/': (context) => InputPage(),
        'results': (context) => ResultsPage(),
      };
}
