import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_1/src/app_data/app_screen.dart';
import 'package:project_1/src/services/provider_service/theme_changer.dart';
import 'package:project_1/src/widgets/drawer/main_drawer.dart';
import 'package:provider/provider.dart';

class Index extends StatefulWidget {
  static const ROUTE_NAME = '/';

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int selectedIndex = 0;
  void selectPage(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  bool themeChange = true;



  @override
  Widget build(BuildContext context) {
    ThemeChanger themeChanger = Provider.of<ThemeChanger>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Web'),
        actions: <Widget>[
          Switch(
            value: themeChange,
            onChanged: (val) {
              if (themeChange) {
                setState(() {
                  themeChange = val;
                });
                themeChanger.setTheme(ThemeMode.dark);
              } else {
                setState(() {
                  themeChange = val;
                });
                themeChanger.setTheme(ThemeMode.light);
              }
            },
            activeColor: Colors.white,
            inactiveThumbColor: Colors.black,
            inactiveTrackColor: Colors.grey,
          ),
          // PopupMenuButton(
          //   icon: Icon(Icons.person),
          //       itemBuilder: (BuildContext context) => [
          //         PopupMenuItem(
          //           value: 'profile',
          //           child: Text('Profile'),
          //         ),
          //         PopupMenuItem(
          //           value: 'setting',
          //           child: Text('Setting'),
          //         ),
          //       ],

          //     )
        ],
      ),
      drawer: MainDrawer(selectPage: selectPage),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Card(
          child: pages[selectedIndex]["page"]
        )
      ),
    );
  }
}