import 'package:flutter/material.dart';
import 'package:quiz/w5/ex1.dart';
import 'package:quiz/w5/ex2.dart';
import 'package:quiz/w5/ex3.dart';
import 'package:quiz/w5/ex4.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

      // To check the result of each exercise, You can choose each of the component such as:

      // home: Ex1()
      // home: Ex2()
      // home: Ex3()
      home: Ex4()
    );
  }
}