import 'package:flutter/material.dart';
import 'package:untitled3/app_screens/favorite_city.dart';
import 'package:untitled3/app_screens/first_screen_dart.dart';
import 'package:untitled3/app_screens/second_screen.dart';
import 'package:untitled3/app_screens/third_screen.dart';

void main() => runApp(const MyFirstApp());

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
      ),

      debugShowCheckedModeBanner: false,
      home: const ThirdScreen(),
    );
  }
}


