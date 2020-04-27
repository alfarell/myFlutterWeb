import 'package:flutter/material.dart';
import 'package:project_1/src/routes/about_screen.dart';
import 'package:project_1/src/routes/home_screen.dart';

final List<Map<String, dynamic>> pages = [
    {"page": HomeScreen(), "route": HomeScreen.ROUTE_NAME, "title": "Home", "pageIcon": Icons.home},
    {"page": AboutScreen(), "route": AboutScreen.ROUTE_NAME, "title": "About", "pageIcon": Icons.info_outline},
  ];