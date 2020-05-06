import 'package:flutter/material.dart';
import 'package:love_calculator/loading_screen/loading_screen.dart';
import 'package:love_calculator/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red),
      home: Home(),
      initialRoute: '/loader',
      routes: {
        '/loader': (context) => Loader(),
        '/home': (context) => Home(),
      },
    );
  }
}
