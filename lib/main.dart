import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
@override

Widget build(BuildContext){

return MaterialApp(
theme:ThemeData.dark().copyWith(
primaryColor: Color(0xFF0A0E21),
scaffoldBackgroundColor: Color(0xFF0A0E21)

),
home: InputPage(),
);
}
}