import 'package:flutter/material.dart';

showAlertDialog1(BuildContext context, {content = "default Content", title = "default title"}) {
  AlertDialog alertDialog = AlertDialog(
    title: Text(title),
    content: Text(content),
  );
  showDialog(context: context,
      builder: (BuildContext context) { return alertDialog;}
  );
}
