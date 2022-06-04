import "package:flutter/material.dart";
import 'package:untitled3/app_screens/show_long_listview.dart';
import 'package:untitled3/app_screens/show_row_and_column.dart';
import 'package:untitled3/app_screens/show_simple_listview.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 30.0, fontStyle: FontStyle.italic),
      ),
      body: ShowLongListView(),
    );
  }
}



