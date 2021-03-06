import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../HomePage.dart';
import '../SideMenu.dart';

class NotificationTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NotificationTab2(),
    );
  }
}
class NotificationTab2 extends StatefulWidget {
  @override
  NotificationTab3 createState() => NotificationTab3();
}

class NotificationTab3 extends State<NotificationTab2> {

  void initState() {
    super.initState();
    BackButtonInterceptor.add(myInterceptor);
  }

  @override
  void dispose() {
    BackButtonInterceptor.remove(myInterceptor);
    super.dispose();
  }

  bool myInterceptor(bool stopDefaultButtonEvent) {
    Navigator.of(context).popUntil(ModalRoute.withName('/Homepage'));
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      drawer: SideMenu(),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: new Text(
                "NOTIFICATION_PAGE",
                style: Theme.of(context).textTheme.display1,
              ),
            ),
            Container(
              child: new RaisedButton(
                color: Colors.purple,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Back To Home',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
