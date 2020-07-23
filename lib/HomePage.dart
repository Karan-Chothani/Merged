import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_merged/preview.dart';
import 'SideMenu.dart';
import 'TopButtons/EyeScreen.dart';
import 'TopButtons/NoseScreen.dart';
import 'TopButtons/LipsScreen.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:matrix_gesture_detector/matrix_gesture_detector.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int itemNo;

  double scale = 0.0;
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();
  final ValueNotifier<Matrix4> notifier1 = ValueNotifier(Matrix4.identity());
  final ValueNotifier<Matrix4> notifier2 = ValueNotifier(Matrix4.identity());
  final ValueNotifier<Matrix4> notifier3 = ValueNotifier(Matrix4.identity());
  final ValueNotifier<Matrix4> notifier4 = ValueNotifier(Matrix4.identity());
  final ValueNotifier<Matrix4> notifier5 = ValueNotifier(Matrix4.identity());
  var scr = new GlobalKey();
  double h1 = 100;
  double w1 = 100;
  double h2 = 100;
  double w2 = 100;
  double h3 = 100;
  double w3 = 100;
  double h4 = 100;
  double w4 = 100;

  var f1Image = [
    "images/outline1/1.png",
    "images/outline1/2.png",
    "images/outline1/3.png",
  ];

  var f2Image = [
    "images/outline2/1.png",
    "images/outline2/2.png",
    "images/outline2/3.png",
  ];

  var eImage = [
    "images/eyes/1.png",
    "images/eyes/2.png",
    "images/eyes/3.png",
  ];

  var nImage = [
    "images/nose/1.png",
    "images/nose/2.png",
    "images/nose/3.png",
  ];

  var lImage = [
    "images/lips/1.png",
    "images/lips/2.png",
    "images/lips/3.png",
    "images/lips/4.png",
  ];
  double height = 200;
  double eh = 200;
  double ew = 200;
  double nh = 100;
  double nw = 300;
  double lh = 100;
  double lw = 100;
  double o2h = 200;
  double o2w = 200;

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        title: Text('Firegrid demo'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Container(
            height: _screenSize.height * 0.895,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/wal.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            child: new Column(children: <Widget>[
              /// TOP BAR
              new Container(
                height: _screenSize.height * 0.07,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(2.0),
                      child: new Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          RaisedButton(
                            color: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => EyeScreen()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Eyes',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          RaisedButton(
                            color: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NoseScreen()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Nose',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          RaisedButton(
                            color: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LipsScreen()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Lips',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          RaisedButton(
                            color: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => EyeScreen()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Face Outline',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              ///Main Container
              new Container(
                  width: 520,
                  height: _screenSize.height * 0.67,
                  child: Center(
                      child: RepaintBoundary(
                    key: scr,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: _screenSize.height * 0.5,
                          child: new Column(
                            children: <Widget>[
                              new SizedBox(
                                height: _screenSize.height * 0.5,
                                child: new Swiper(
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return new Image.asset(f1Image[index]);
                                  },
                                  itemCount: f1Image.length,
                                  itemWidth: 300,
                                  itemHeight: 300,
                                  control: new SwiperControl(),
                                  layout: SwiperLayout.CUSTOM,
                                  customLayoutOption: CustomLayoutOption(
                                          startIndex: -1, stateCount: 3)
                                      .addRotate([
                                    0 / 180,
                                    0.0,
                                    0 / 180
                                  ]).addTranslate([
                                    Offset(-400.0, 0.0),
                                    Offset(0.0, 0.0),
                                    Offset(370, -40.0),
                                  ]),
                                ),
                                width: 600,
                              ),
                            ],
                          ),
                        ),

                        /// Outline 2
                        new Align(
                          child: MatrixGestureDetector(
                            onMatrixUpdate: (m, tm, sm, rm) {
                              itemNo = 4;
                              notifier5.value = m;
                            },
                            shouldRotate: false,
                            // shouldScale: true,
                            // shouldTranslate: false,
                            child: AnimatedBuilder(
                              animation: notifier5,
                              builder: (ctx, child) {
                                return Transform(
                                  transform: notifier5.value,
                                  child: Stack(
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment(0, 1.2),
                                        child: Container(
                                          width: o2w,
                                          height: o2h,
                                          //color: Colors.purple,
                                          child: new SizedBox(
                                            child: Swiper(
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return Image.asset(
                                                  f2Image[index],
                                                );
                                              },
                                              itemCount: f2Image.length,
                                              itemWidth: 300,
                                              itemHeight: 600,
                                              control: new SwiperControl(
                                                padding:
                                                    EdgeInsets.only(top: 60),
                                                color: Colors.red,
                                              ),
                                              layout: SwiperLayout.DEFAULT,
                                              customLayoutOption:
                                                  CustomLayoutOption(
                                                          startIndex: -1,
                                                          stateCount: 3)
                                                      .addRotate([
                                                0 / 180,
                                                0.0,
                                                0 / 180
                                              ]).addTranslate([
                                                Offset(-400.0, 0.0),
                                                Offset(0.0, 0.0),
                                                Offset(370, -40.0),
                                              ]),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),

                        /// EYES
                        new Align(
                          child: MatrixGestureDetector(
                            onMatrixUpdate: (m, tm, sm, rm) {
                              itemNo = 1;
                              notifier1.value = m;
                            },
                            shouldRotate: false,
                            // shouldScale: true,
                            // shouldTranslate: false,
                            child: AnimatedBuilder(
                              animation: notifier1,
                              builder: (ctx, child) {
                                return Transform(
                                  transform: notifier1.value,
                                  child: Stack(
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment(0, -0.1),
                                        child: Container(
                                          width: ew,
                                          height: eh,
                                          //color: Colors.purple,
                                          child: new SizedBox(
                                            child: Swiper(
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return Image.asset(
                                                  eImage[index],
                                                );
                                              },
                                              itemCount: eImage.length,
                                              itemWidth: 300,
                                              itemHeight: 600,
                                              //control: new SwiperControl(),
                                              layout: SwiperLayout.DEFAULT,
                                              customLayoutOption:
                                                  CustomLayoutOption(
                                                          startIndex: -1,
                                                          stateCount: 3)
                                                      .addRotate([
                                                0 / 180,
                                                0.0,
                                                0 / 180
                                              ]).addTranslate([
                                                Offset(-400.0, 0.0),
                                                Offset(0.0, 0.0),
                                                Offset(370, -40.0),
                                              ]),
                                            ),
                                            height: 200,
                                            width: 350,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),

                        /// NOSE
                        new Align(
                          child: MatrixGestureDetector(
                            onMatrixUpdate: (m, tm, sm, rm) {
                              notifier2.value = m;
                              itemNo = 2;
                            },
                            shouldRotate: false,
                            // shouldScale: true,
                            // shouldTranslate: false,
                            child: AnimatedBuilder(
                              animation: notifier2,
                              builder: (ctx, child) {
                                return Transform(
                                  transform: notifier2.value,
                                  child: Stack(
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment(0, 0.1),
                                        child: Container(
                                          width: nw,
                                          height: nh,
                                          //color: Colors.purple,
                                          child: new SizedBox(
                                            child: Swiper(
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return Image.asset(
                                                    nImage[index]);
                                              },
                                              itemCount: nImage.length,
                                              itemWidth: 100,
                                              itemHeight: 100,
                                              //control: new SwiperControl(),
                                              layout: SwiperLayout.DEFAULT,
                                              customLayoutOption:
                                                  CustomLayoutOption(
                                                          startIndex: -1,
                                                          stateCount: 3)
                                                      .addRotate([
                                                0 / 180,
                                                0.0,
                                                0 / 180
                                              ]).addTranslate([
                                                Offset(-400.0, 0.0),
                                                Offset(0.0, 0.0),
                                                Offset(370, -40.0),
                                              ]),
                                            ),
                                            height: 500,
                                            width: 650,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),

                        /// LIPS
                        new Align(
                          child: MatrixGestureDetector(
                            onMatrixUpdate: (m, tm, sm, rm) {
                              notifier3.value = m;
                              itemNo = 3;
                            },
                            shouldRotate: false,
                            // shouldScale: true,
                            // shouldTranslate: false,
                            child: AnimatedBuilder(
                              animation: notifier3,
                              builder: (ctx, child) {
                                return Transform(
                                  transform: notifier3.value,
                                  child: Stack(
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment(0.0, 0.5),
                                        child: Container(
                                          width: lw,
                                          height: lh,
                                          //color: Colors.purple,
                                          child: new SizedBox(
                                            child: Swiper(
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return Image.asset(
                                                    lImage[index]);
                                              },
                                              itemCount: lImage.length,
                                              itemWidth: 500,
                                              itemHeight: 600,
                                              //control: new SwiperControl(),
                                              layout: SwiperLayout.DEFAULT,
                                              customLayoutOption:
                                                  CustomLayoutOption(
                                                          startIndex: -1,
                                                          stateCount: 3)
                                                      .addRotate([
                                                0 / 180,
                                                0.0,
                                                0 / 180
                                              ]).addTranslate([
                                                Offset(-400.0, 0.0),
                                                Offset(0.0, 0.0),
                                                Offset(370, -40.0),
                                              ]),
                                            ),
                                            height: 500,
                                            width: 650,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),

                      ],
                    ),
                  ))),

              ///RECOMMEND BUTTON

              Container(
                  child: Row(
                    children: <Widget>[
                      //const Spacer(),
                      new SizedBox(width: 3.5,),
                      Expanded(
                        child: Center(
                          child: FloatingActionButton.extended(
                            onPressed: zoomIn,
                            heroTag: null,
                            label: Text('Zoom In', style: TextStyle( fontSize: 17 ),),
                            icon: Icon(Icons.zoom_in, size: 30,),
                            backgroundColor: Colors.pink,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: FloatingActionButton.extended(
                            backgroundColor: Colors.red,
                            heroTag: null,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            onPressed: takescrshot,
                            label: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Next',
                                style: TextStyle(fontSize: 23, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: FloatingActionButton.extended(
                            onPressed: zoomOut,
                            heroTag: null,
                            label: Text('Zoom Out', style: TextStyle( fontSize: 17 ),),
                            icon: Icon(Icons.zoom_out, size: 30,),
                            backgroundColor: Colors.pink,
                          ),
                        ),
                      ),
                      new SizedBox(width: 3.5,),
                    ],
                  ))
            ])),
      ),
    );
  }

  void alertPopUp(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Please Select Features"),
          content: new Text("Select the facial features you want to resize"),
          actions: <Widget>[
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void zoomIn() {
    setState(() {
      if (itemNo == 1) {
        print(itemNo);
        eh = eh + 10;
        ew = ew + 10;
      } else if (itemNo == 2) {
        print(itemNo);
        nh = nh + 10;
        nw = nw + 10;
      } else if (itemNo == 3) {
        print(itemNo);
        lh = lh + 10;
        lw = lw + 10;
      } else if (itemNo == 4) {
        print(itemNo);
        o2h = o2h + 10;
        o2w = o2w + 10;
      } else {
        alertPopUp(context);
      }
    });
  }

  void zoomOut() {
    setState(() {
      if (itemNo == 1) {
        print(itemNo);
        eh = eh - 10;
        ew = ew - 10;
      } else if (itemNo == 2) {
        print(itemNo);
        nh = nh - 10;
        nw = nw - 10;
      } else if (itemNo == 3) {
        print(itemNo);
        lh = lh - 10;
        lw = lw - 10;
      } else if (itemNo == 4) {
        print(itemNo);
        o2h = o2h - 10;
        o2w = o2w - 10;
      } else {
        alertPopUp(context);
      }
    });
  }

  takescrshot() async {
    RenderRepaintBoundary boundary = scr.currentContext.findRenderObject();
    var image = await boundary.toImage();

    var byteData = await image.toByteData(format: ImageByteFormat.png);
    var png = byteData.buffer.asUint8List();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => new PreviewScreenshot(photo: png),
      ),
    );
  }
}