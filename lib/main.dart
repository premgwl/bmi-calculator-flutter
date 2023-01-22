import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(color: Color(0x1B1B3927)),
      ),
      //home: InputPage(),
      routes: {
        '/': (context) {
          return InputPage();
        },
        '/results': (context) {
          return ResultPage();
        },
      },
    );
  }
}
