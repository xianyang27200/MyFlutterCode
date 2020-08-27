import 'package:BMI/src/Screen1/result.dart';
import 'package:flutter/material.dart';
import './src/app.dart';
import './src/Screen1/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E24),
        scaffoldBackgroundColor: Color(0xFF0A0E24),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => BmiPage(),
        '/page1': (context) => ResultPage(),
      },
    );
  }
}
