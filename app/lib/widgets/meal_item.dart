import 'package:app/models/meal_model.dart';
import 'package:flutter/material.dart';

/// Componente de renderização do item de refeição
///
/// @author Rodrigo Andrade
/// @since 25/05/2021
class MealItem extends StatelessWidget {
  final MealModel mealModel;

  const MealItem(this.mealModel);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
                child: Image.network(
                  mealModel.imageUrl,
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
