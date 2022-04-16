import 'package:flutter/material.dart';
import 'package:pj2/Screen/LoginPage.dart';
import 'package:pj2/Screen/About.dart';
import 'package:pj2/Screen/HomePage.dart';
import 'package:pj2/Screen/ActivityPage.dart';
import 'package:pj2/Screen/SelectionPage.dart';
import 'package:pj2/Screen/CurrentActivity.dart';
import 'package:pj2/common/theme.dart';
import 'package:pj2/Screen/Calculation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Burn Cal',
      theme: appTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/AboutUs': (context) => const AboutUs(),
        '/HomePage': (context) => const HomePage(),
        '/Activity': (context) => const ActivityPage(),
        '/SelectionPage': (context) => const SelectionPage(),
        '/CurrentActivity': (context) => const CurrentActivity(),
        '/Calculation': (context) => const Calculation(),
        

      },
    );
  }
}





