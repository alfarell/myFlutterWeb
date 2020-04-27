import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const ROUTE_NAME = '/home';
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Welcome to my first flutter web'),
      ),
    );
  }
}