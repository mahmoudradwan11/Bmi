import 'package:bmi/bmi_calc.dart';
import 'package:bmi/result.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return const MaterialApp(
      home: BMI(),
      debugShowCheckedModeBanner: false,
    );
  }
}
