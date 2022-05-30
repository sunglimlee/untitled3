import "package:flutter/material.dart";
import 'package:untitled3/app_screens/first_screen_dart.dart';

void main() => runApp(const MyFlutterApp()); // runApp


class MyFlutterApp extends StatelessWidget {
  static const backgroundColor = Colors.lightBlueAccent;

  const MyFlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Flutter Application",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My really First App Screen"),
          backgroundColor: backgroundColor,
        ),
        body: const FirstScreen()
      ),
    );
  }
}