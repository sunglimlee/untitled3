import "package:flutter/material.dart";
import 'package:untitled3/app_screens/alert_dialog.dart';
import 'package:untitled3/app_screens/calculator.dart';
import 'package:untitled3/app_screens/favorite_city.dart';
import 'package:untitled3/app_screens/show_long_listview.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Mortgage Interest Calculator"),
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 25.0, fontStyle: FontStyle.normal),
      ),
      body: const SIForm(),
      floatingActionButton: FloatingActionButton(
        onPressed: () { showAlertDialog1(context, title: "Floating Button", content: "Floating button pressed"); },
        tooltip: "Add One more Item",
        child: const Icon(Icons.add),
      ),
    );
  }
}


