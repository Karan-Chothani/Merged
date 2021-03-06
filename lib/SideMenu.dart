import 'dart:io';

import 'package:flutter/material.dart';

import 'Tabs/ListTab.dart';
import 'Tabs/NotificationTab.dart';
import 'Tabs/UserTab.dart';
import 'HomePage.dart';

class SideMenu extends StatefulWidget {
  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
              //color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/wal.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()))
            },
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('List'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ListTab())),
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('User'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => UserTab()))
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notification'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationTab()))},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {
              print("In EXit"),
              exitalert,
              new Container(
                child: GestureDetector(
                  child: AlertDialog(
                    title: Text("LOGOUT"),
                    content: Text("Are Sure ??"),
                    actions: <Widget>[
                      FlatButton(onPressed: (){exit(0);}, child: Text("YES")),
                      FlatButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));}, child: Text("NO"))
                    ],
                  ),
                ),
              ),
            },
          ),
        ],
      ),
    );
  }

  void exitalert() {
    print("In EXIt");
    setState(() {

    });
    new Container(
      child: GestureDetector(
        child: AlertDialog(
          title: Text("LOGOUT"),
          content: Text("Are Sure ??"),
          actions: <Widget>[
            FlatButton(onPressed: (){exit(0);}, child: Text("YES")),
            FlatButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));}, child: Text("NO"))
          ],
        ),
      ),
    );
  }
}

