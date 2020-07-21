import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_merged/HomePage.dart';
import '../SideMenu.dart';

class ListTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListTab2(),
    );
  }
}
class ListTab2 extends StatefulWidget {
  @override
  ListTab3 createState() => ListTab3();
}

class ListTab3 extends State<ListTab2> {
  @override
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
    Navigator.push(context,
        MaterialPageRoute(builder: (context)=>HomePage())
    );
    return true;
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        title: Text('List'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: new Text(
                "LIST_PAGE",
               // style: Theme.of(context).textTheme.display1,
              ),
            ),
            Container(
              child: new RaisedButton(
                color: Colors.purple,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  Navigator.pop(context);
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
