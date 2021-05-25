import 'package:app/models/category_model.dart';
import 'package:flutter/material.dart';

/// @author Rodrigo Andrade
/// @since 25/05/2021
class CategoryItem extends StatelessWidget {
  final CategoryModel categoryModel;

  const CategoryItem(this.categoryModel);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        margin: const EdgeInsets.all(10.0),
        color: categoryModel.color,
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(categoryModel.title,
              style: Theme.of(context).textTheme.headline5,
        ),
      ),
    ));
  }
}
