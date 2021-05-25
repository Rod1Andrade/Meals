import 'package:app/models/meal_model.dart';
import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MealModel mealModel =
        ModalRoute.of(context).settings.arguments as MealModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(mealModel.title),
      ),
    );
  }
}
