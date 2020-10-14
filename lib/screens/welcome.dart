import 'package:flutter/material.dart';
import 'package:flutter_ui_concept_solar_system/colors.dart';
import 'package:flutter_ui_concept_solar_system/widgets/gradient_button.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg_welcome.png"),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Aperte o cinto",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "Comece sua jornada pelo sistema solar.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Aperte o cinto",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  GradientButton(
                    text: "fasfa asdfasf asfda",
                    gradient: LinearGradient(
                      colors: <Color>[burnt_sienna, salmon],
                    ),
                    onTap: () {
                      Navigator.pushReplacementNamed(context, "/home");
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
