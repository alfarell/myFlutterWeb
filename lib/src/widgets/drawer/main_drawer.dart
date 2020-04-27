import 'package:flutter/material.dart';
import 'package:project_1/src/app_data/app_screen.dart';

class MainDrawer extends StatelessWidget {
  final int selectedIndex;
  final Function selectPage;

  MainDrawer({this.selectedIndex, this.selectPage});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: Image.network('https://lh3.googleusercontent.com/a-/AOh14GiFVoLnb9Lra067vXEtvrQVWGVR-xz6wkIoIl1zDw=s96-cc-rg'),
            accountName: Text('Alfarell Muchamad Yuwanto'),
            accountEmail: Text('malfarell@gmail.com'),
          ),
          Column(
            children: pages.map<Widget>((page) {
              return ListTile(
                onTap: () {
                  selectPage(pages.indexOf(page));
                  Navigator.of(context).pop();
                },
                leading: Icon(page['pageIcon']),
                title: Text(page['title']),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}