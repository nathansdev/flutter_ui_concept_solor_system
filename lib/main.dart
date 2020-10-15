import 'package:flutter/material.dart';
import 'package:flutter_ui_concept_solar_system/colors.dart';
import 'package:flutter_ui_concept_solar_system/screens/bookmark.dart';
import 'package:flutter_ui_concept_solar_system/screens/detail.dart';
import 'package:flutter_ui_concept_solar_system/screens/gallery.dart';
import 'package:flutter_ui_concept_solar_system/screens/home.dart';
import 'package:flutter_ui_concept_solar_system/screens/home_screen.dart';
import 'package:flutter_ui_concept_solar_system/screens/search.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: god_gray,
        backgroundColor: god_gray,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen(),
      routes: {
        '/welcome': (context) => WelcomeScreen(),
        '/home': (context) => HomePage(),
        '/home_screen': (context) => HomeScreen(),
        '/search': (context) => SearchScreen(),
        '/detail': (context) => DetailPage(),
        '/bookmark': (context) => BookmarkScreen(),
        '/gallery': (context) => GalleryPage()
      },
    );
  }
}
