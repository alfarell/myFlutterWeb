import 'package:flutter/material.dart';
import 'package:project_1/src/routes/about_screen.dart';
import 'package:project_1/src/routes/index.dart';
import 'package:project_1/src/services/provider_service/theme_changer.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(ThemeMode.light),
      child: MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      title: 'My First Flutter Web',
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.blue,
          secondaryHeaderColor: Colors.lightBlue,
          accentColor: Colors.blueAccent,
          canvasColor: Colors.white,
          cardColor: Colors.white,
          backgroundColor: Colors.white),
      darkTheme: ThemeData(
          brightness: Brightness.dark, 
          primaryColor: Colors.purple,
          secondaryHeaderColor: Colors.purple,
          accentColor: Colors.purpleAccent),
      themeMode: theme.getTheme(),
      debugShowCheckedModeBanner: false,
      initialRoute: Index.ROUTE_NAME,
      routes: {
        Index.ROUTE_NAME: (_) => Index(),
      },
    );
  }
}
