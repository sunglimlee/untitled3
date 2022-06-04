import 'package:flutter/material.dart';
import 'package:untitled3/app_screens/alert_dialog.dart';

// 1. 1000개의 데이터를 임의로 생성
// 2. Widget 으로 변경
// 3. ListView 에 적용 (builder 함수 이용)

class ShowLongListView extends StatelessWidget {
  const ShowLongListView({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    var listItems = getListElements();

    var listView = ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.airplane_ticket),
          title: Text(listItems[index]),
          trailing: const Icon(Icons.delete),
          onTap: () {
            //debugPrint('Item ${index} was tapped');
            //showAlertDialog1(context, content: "Item ${index} was tapped", title: "Thank you");
            showSnackBar1(context, index);
          }
        );
      },
    );
    return listView;
  }

  List<String> getListElements() {
    var items = List<String>.generate(1000, (index) => "Item $index");
    return items;
  }
}

