import "package:flutter/material.dart";
import 'package:untitled3/app_screens/alert_dialog.dart';
import 'package:untitled3/app_screens/show_long_listview.dart';

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
      body: const ShowLongListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () { showAlertDialog1(context, title: "Floating Button", content: "Floating button pressed"); },
        tooltip: "Add One more Item",
        child: const Icon(Icons.add),
      ),
    );
  }
}



