import 'package:flutter/material.dart';

class ShowSimpleListView extends StatelessWidget {
  const ShowSimpleListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ListView listView = ListView(
      children:  <Widget>[
        const ListTile(
          leading: Icon(Icons.phone),
          title: Text("Phone number"),
          subtitle: Text("416-803-7788"),
          trailing: Icon(Icons.wb_sunny),
        ),
        const Text("Yet another element in List"),
        Container(color: Colors.red, height: 50),
      ],
    );
    return Container(color: Colors.lime,child: listView,);
  }
}
