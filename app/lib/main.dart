import 'package:app/screens/categories_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(Meals());

class Meals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals',
      home: CategoriesScreen(),
    );
  }
}
