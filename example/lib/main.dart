import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:screen_config/screen_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppHome(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ScreenConfig.init(context);

    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: viewInsets,
              child: Container(
                color: Colors.red,
                height: safeBlockVertical * 50,
                width: safeBlockHorizontal * 50,
                child: FittedBox(
                  child: Text("50x50 safe dynamic 0.01 sized blocks"),
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              color: Colors.blue,
              width: screenWidth * 0.5,
              height: screenHeight * 0.5,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "screenWidth * 0.5%",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Center(
                      child: Text(
                    "50%-50%",
                    style: TextStyle(color: Colors.white),
                  )),
                  Align(
                    alignment: Alignment.centerRight,
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: Text(
                        "screenHeight * 0.5",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.red,
              height: blockSizeVertical * 50,
              width: blockSizeHorizontal * 50,
              child: FittedBox(
                child: Text("50x50 dynamic 0.01 sized blocks"),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
