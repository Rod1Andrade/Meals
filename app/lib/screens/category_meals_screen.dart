import 'package:app/models/category_model.dart';
import 'package:flutter/material.dart';

/// Lista de receitas por categoria.
///
/// @author Rodrigo Andrade
/// @since 25/05/2021
class CategoryMealScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CategoryModel categoryModel =
        ModalRoute.of(context).settings.arguments as CategoryModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryModel.title),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Receitas por categoria...'),
      ),
    );
  }
}
