import 'dart:typed_data';

import 'package:flutter/material.dart';

class PreviewScreenshot extends StatelessWidget {
  final Uint8List photo;
  const PreviewScreenshot({Key key, this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Utilities'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

        Container(
              height: 500,
            width: 1000,
            decoration: new  BoxDecoration(
              image: DecorationImage(

                  image: Image.memory(photo).image
              ),
            ),


        )
])


    );
  }
}