
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'HomePage.dart';


void main() {
  //runApp(DevicePreview(
  //  enabled: !kReleaseMode,
  //  builder: (context) => App(),
  //),
  //);
  runApp(new MaterialApp(
    title: "Firegrid demo",
    theme: ThemeData(primarySwatch: Colors.green),
    home: App(),
  ));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

