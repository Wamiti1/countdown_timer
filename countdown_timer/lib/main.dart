import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:countdown_timer/screens/input.dart';
import 'package:countdown_timer/screens/results.dart';

void main() {
  runApp(MaterialApp(
    title: 'Countdown Timer',
    debugShowCheckedModeBanner: false,    
    theme: FlexThemeData.light(scheme: FlexScheme.hippieBlue),
    darkTheme: FlexThemeData.dark(scheme: FlexScheme.hippieBlue, darkIsTrueBlack: true),
    home: const Results(),
  ));
}


