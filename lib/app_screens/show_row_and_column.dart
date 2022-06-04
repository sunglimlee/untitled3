import 'package:flutter/material.dart';
import 'package:untitled3/app_screens/alert_dialog.dart';

class ShowRowAndColumn extends StatelessWidget {
  const ShowRowAndColumn({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepPurple,
      child: Center(
        child: Container(
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.only(left: 10.0, top: 60.0),
            alignment: AlignmentDirectional.center,
            color: Colors.deepPurpleAccent,
            //width: 300.00,
            //height : 250.00,
            child: Column(
              children: [
                FlightImageAsset(),
                Container(
                  height: 30.0,
                ),
                Row(
                  // overflow???
                  children: const [
                    Expanded(
                      child: Text(
                        "Spice Jets",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "To Infinity and Beyond by BudLightYear",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 20.0,
                ),
                Row(
                  // overflow???
                  children: const [
                    Expanded(
                      child: Text(
                        "Air Canada",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Never experience before you fly to Canada",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                const showElebatedButton(),
              ],
            )
        ),
      ),
    );
  }
}

class FlightImageAsset extends StatelessWidget {
  const FlightImageAsset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage("./images/flight.png");
    Image image = Image(
      image: assetImage,
    );
    return Container(
      child: image,
    );
  }
}

class showElebatedButton extends StatelessWidget {
  const showElebatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      width: 230.0,
      height: 50.0,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.deepOrange)),
        onPressed: () { showAlertDialog1(context); },
        child: const Text(
          "Book your Flight",
          style: TextStyle(
              color: Colors.white, fontSize: 20.0, fontFamily: "Raleway"),
        ),
      ),
    );
  }

}
