import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  static const ROUTE_NAME = '/about';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('This web is built with flutter web'),
      ),
    );
  }
}
