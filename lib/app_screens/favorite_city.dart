import 'package:flutter/material.dart';

class FavoriteCity extends StatefulWidget {
  const FavoriteCity({Key? key}) : super(key: key);

  @override
  State createState() {
    return _FavoriteCityState();
  }
}

class _FavoriteCityState extends State<FavoriteCity> {
  String nameCity = "";
  final _currencies = ['Rupees', 'Dollar', 'Pound'];
  var currentItemSelected = 'Dollar';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          TextField(
            onSubmitted: (value) {

              setState(() {
                nameCity = value.toString();
              });
            },
          ),
          DropdownButton<String>(
            icon: const Icon(Icons.arrow_downward),
            elevation: 16,
            style: const TextStyle(color: Colors.deepPurple,fontSize: 20.0),
            items: _currencies.map((e) {
                return DropdownMenuItem<String>(
                  value: e,
                  child: Text(e),
                );
              }).toList(),
              onChanged: (newValueSelected) {
                setState(() {
                  currentItemSelected = newValueSelected!;
                });
              },
              value: currentItemSelected,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              "Your best city is $nameCity",
              style: const TextStyle(fontSize: 20.0),
            ),
          )
        ],
      ),
    );
  }
}
