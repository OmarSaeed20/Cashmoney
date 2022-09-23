import 'package:cashmoney/screens/git_card_screen.dart';
import 'package:cashmoney/screens/login_screen.dart';
import 'package:cashmoney/screens/sign2_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GitCardScreen(),
    );
  }
}