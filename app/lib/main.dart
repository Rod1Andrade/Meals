import 'package:app/screens/categories_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(Meals());

/// Aplicação de Receitas de refeções.
///
/// @author Rodrigo Andrade
/// @since 25/05/2021
class Meals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      title: 'Meals',
      home: CategoriesScreen(),
    );
  }
}
