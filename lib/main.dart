import 'package:flutter/material.dart';
import 'HomePage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dice Roller",
      theme: ThemeData(
        primaryColor: Color(0xFFFFD000),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),

    );
  }
}