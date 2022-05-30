import 'dart:math';

import "package:flutter/material.dart";

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.lightBlueAccent,
      child: Center(
        child: Text(
          "Your lucky number is ${generateLuckyNumber()}",
          textDirection: TextDirection.ltr,
          style: const TextStyle(color: Colors.white, fontSize: 40.0),
        ),
      ),
    );
  }

  int generateLuckyNumber() {
    var random = Random();
    return random.nextInt(10);
  }
}