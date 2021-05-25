import 'package:app/models/category_model.dart';
import 'package:flutter/material.dart';

/// @author Rodrigo Andrade
/// @since 25/05/2021
class CategoryMealScreen extends StatelessWidget {
  final CategoryModel categoryModel;

  const CategoryMealScreen(this.categoryModel);

  @override
  Widget build(BuildContext context) {
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
