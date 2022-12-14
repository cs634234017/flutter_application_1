import 'package:flutter/material.dart';
import 'views/main_screen.dart';

// ignore_for_file: prefer_const_constructors

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter Layout",
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
        ),
        home: MainScreen());
  }
}
