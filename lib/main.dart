import 'package:flutter/material.dart';
import 'package:untitled3/app_screens/favorite_city.dart';
import 'package:untitled3/app_screens/first_screen_dart.dart';
import 'package:untitled3/app_screens/second_screen.dart';

void main() => runApp(const MyFirstApp());

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondScreen(),
    );
  }
}


