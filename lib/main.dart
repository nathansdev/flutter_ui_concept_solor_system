import 'package:flutter/material.dart';
import 'package:flutter_ui_concept_solar_system/colors.dart';
import 'package:flutter_ui_concept_solar_system/screens/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solar System',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: god_gray,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen(),
    );
  }
}
