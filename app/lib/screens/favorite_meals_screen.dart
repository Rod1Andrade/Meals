import 'package:app/models/meal_model.dart';
import 'package:app/utils/app_messages.dart';
import 'package:app/widgets/meal_item.dart';
import 'package:flutter/material.dart';

/// Tela das refeicoes favoritas
///
/// @author Rodrigo Andrade
/// @since 25/05/2021
class FavoritesMealScreen extends StatelessWidget{

  final List<MealModel> favoriteMeals;

  const FavoritesMealScreen({this.favoriteMeals});

  @override
  Widget build(BuildContext context) {
    return  favoriteMeals.isEmpty ? Center(
      child: Text(AppMessages.MESSAGE_NO_MEALS_FAVORITED),
    ) : ListView.builder(
      itemCount: favoriteMeals.length,
      itemBuilder: (context, index) {
        MealModel mealModel = favoriteMeals[index];
        return MealItem(mealModel);
      },
    );
  }

}