import 'package:flutter/material.dart';

abstract class BlocEvent{}

class ChangeTheme extends BlocEvent{
  final ThemeMode themeMode;

  ChangeTheme({this.themeMode});
}