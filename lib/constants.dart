import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum Gender { MALE, FEMALE }

String weightText = 'WEIGHT';
String ageText ='AGE';

var activeCardColor = Color(0xFF1D1E33);
var inActiveCardColor = Color(0xFF111330);
var bottomContainerColor = Color(0xFFEB1555);
var labelTextStyle = GoogleFonts.ebGaramond(
    textStyle: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)));
var valueTextStyle = GoogleFonts.bellota(
    textStyle: TextStyle(fontSize: 50, fontWeight: FontWeight.w900));
var largeButtonTextStyle = GoogleFonts.ebGaramond(
    textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold));
var appTitleTextStyle=GoogleFonts.ebGaramond();
var resultsTitleTextStyle = GoogleFonts.bellota(
    textStyle: TextStyle(fontSize: 50, fontWeight: FontWeight.bold));
var normalResultStyle = GoogleFonts.bellota(
    textStyle: TextStyle(fontSize: 30, color: Color(0xFF24D876)));
var bmiResultStyle = GoogleFonts.bellota(
    textStyle: TextStyle(fontSize: 100, fontWeight: FontWeight.bold));