import 'package:app/data/dummy_data.dart';
import 'package:app/models/category_model.dart';
import 'package:app/models/meal_model.dart';
import 'package:app/widgets/meal_item.dart';
import 'package:flutter/material.dart';

/// Lista de receitas por categoria.
///
/// @author Rodrigo Andrade
/// @since 25/05/2021
class CategoryMealScreen extends StatelessWidget {

  final List<MealModel> meals;

  const CategoryMealScreen({this.meals});

  @override
  Widget build(BuildContext context) {
    // Cateagorial de refeicoes retornada a partir da rota.
    final CategoryModel categoryModel =
        ModalRoute.of(context).settings.arguments as CategoryModel;

    // Lista de Refeicoes.
    final List<MealModel> mealsList = meals
        .where((mealModel) => mealModel.categoriesId.contains(categoryModel.id))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryModel.title),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: mealsList.length,
        itemBuilder: (context, index) {
          MealModel mealModel = mealsList[index];
          return MealItem(mealModel);
        },
      ),
    );
  }
}
