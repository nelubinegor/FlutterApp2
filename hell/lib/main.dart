import 'package:flutter/material.dart';
import 'day.dart';
import 'homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'What I Did Wrong Today',
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        accentColor: Colors.red,
      ),
      home: HomePage(),
    );
  }
}
