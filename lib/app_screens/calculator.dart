import 'package:flutter/material.dart';
import 'package:untitled3/app_screens/alert_dialog.dart';

class SIForm extends StatefulWidget {
  const SIForm({Key? key}) : super(key: key);

  @override
  State createState() {
    return _SIFormState();
  }
}

class _SIFormState extends State<SIForm> {

  final _formKey = GlobalKey<FormState>();
  final _currencies = ['Rupees', 'Dollars', 'Pounds'];
  final _minimumPadding = 5.0;

  // ignore: prefer_final_fields
  var _currentItemSelected = "";
  var resultText = "위의 내용을 입력하여 주십시오.";

  TextEditingController principalController = TextEditingController();
  TextEditingController roiController = TextEditingController();
  TextEditingController termController = TextEditingController();


  @override
  void initState() {
    super.initState();
    _currentItemSelected = _currencies[0];

  }

  @override
  Widget build(BuildContext context) {
    //기본 Theme 을 받아와서 그 색깔을 Text 에 적옹하는 방법
    TextStyle? textStyle = Theme.of(context).textTheme.titleMedium;
    return Form(
      key: _formKey,
      child: ListView(padding: EdgeInsets.all(_minimumPadding * 2), children: [
        Column(
          children: [
            getImageAsset(),
            Padding(
              padding:
                  EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
              child: TextFormField(
                validator: (value) {
                  if (!isNumeric(value!)) {
                    return "Please enter Principal e.g. 12000";
                  }
                  return null;
                },
                controller: principalController,
                keyboardType: TextInputType.number,
                style: textStyle,
                decoration: InputDecoration(
                    labelText: 'Principal',
                    hintText: 'Enter Principal e.g. 12000',
                    errorStyle: const TextStyle(fontSize: 18.0 ),
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
              child: TextFormField(
                validator: (value) {
                  if (!isNumeric(value!)) {
                    return "Please enter Rate of Interest e.g. : 5";
                  }
                  return null;
                },
                controller: roiController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Rate of Interest',
                    hintText: 'In Percent %',
                    errorStyle: const TextStyle(fontSize: 18.0 ),
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      validator: (value) {
                        if (!isNumeric(value!)) {
                          return "Please enter Time in years. e.g : 25";
                        }
                        return null;
                      },
                      controller: termController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: 'Term',
                          errorStyle: const TextStyle(fontSize: 18.0 ),
                          hintText: 'Time in years',
                          labelStyle: textStyle,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )),
                    ),
                  ),
                  Container(
                    width: _minimumPadding * 5,
                  ),
                  Expanded(
                      child: DropdownButton<String>(
                    items: _currencies.map((e) {
                      return DropdownMenuItem<String>(
                        value: e,
                        child: Text(e),
                      );
                    }).toList(),
                    onChanged: (String? newValueSelected) {
                      _onDropDownItemSelected(newValueSelected);
                    },
                    value: _currentItemSelected,
                  )),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
              child: Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                    onPressed: () {
                      setState( () {
                        if (_formKey.currentState!.validate()) {
                        resultText = _calculateTotalReturns();
                      }},);
                    },
                    child: const Text(
                      "Calculate", textScaleFactor: 1.5,
                    ),
                  )),
                  Container(
                    width: _minimumPadding * 2,
                  ),
                  Expanded(
                      child: ElevatedButton(
                    onPressed: () {
                      setState( () {
                        principalController.clear();
                        roiController.clear();
                        termController.clear();
                        _currentItemSelected = "Dollars";
                        resultText = "위의 내용을 입력하여 주십시오.";

                      },);
                    },
                    child: const Text(
                      "Reset", textScaleFactor: 1.5,
                    ),
                  )),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: _minimumPadding),
              child: Text(resultText, textScaleFactor: 1.5,),
            )
          ],
        ),
      ]),
    );
  }

  Widget getImageAsset() {
    AssetImage assetImage = const AssetImage('images/rbc.png');
    Image image = Image(
      image: assetImage,
      width: 256.0,
      height: 256.0,
    );
    return Container(
      margin: EdgeInsets.all(_minimumPadding * 10.0),
      alignment: Alignment.center,
      child: image,
    );
  }

  void _onDropDownItemSelected(String? newValueSelected) {
    setState( () {
      _currentItemSelected = newValueSelected!;
    },

    );
  }

  String _calculateTotalReturns() {
    double result = double.parse(principalController.text) +
        (double.parse(principalController.text)
            * double.parse(roiController.text)
            * double.parse(termController.text)
        )/100;
    return "입력하신 값들을 계산한 결과는 다음과 같습니다. : $result";
  }
}
