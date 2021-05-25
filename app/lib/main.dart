import 'package:flutter/material.dart';

import 'package:app/screens/home_screen.dart';

void main() => runApp(Meals());

class Meals extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals',
      home: HomeScreen(),
    );
  }
}
