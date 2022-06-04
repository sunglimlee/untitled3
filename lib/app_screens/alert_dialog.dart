import 'package:flutter/material.dart';

//AlertDialog 보여주는 함수
showAlertDialog1(BuildContext context,
    {content = "default Content", title = "default title"}) {
  AlertDialog alertDialog = AlertDialog(
    title: Text(title),
    content: Text(content),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}

//SnackBar 보여주는 함수
showSnackBar1(BuildContext context, int index) {
  var snackBar = SnackBar(
    content: Text("Item $index pressed"),
    action: SnackBarAction(
      label: "UNDO",
      onPressed: () {
        showAlertDialog1(context);
      },
    ),
  );

  //여기가 중요하다.
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
