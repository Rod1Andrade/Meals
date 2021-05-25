import 'package:app/enums/complexity.dart';
import 'package:app/enums/cost.dart';
import 'package:flutter/foundation.dart';

/// @author Rodrigo Andrade
/// @since 25/05/2021
class MealModel {
  final String id;
  final List<String> categoriesId;
  final String title;
  final Cost cost;
  final Complexity complexity;
  final String imageUrl;
  final int duration;
  final List<String> ingredients;
  final List<String> steps;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;

  const MealModel({
    @required this.id,
    @required this.categoriesId,
    @required this.title,
    @required this.cost,
    @required this.complexity,
    @required this.imageUrl,
    @required this.duration,
    @required this.ingredients,
    @required this.steps,
    @required this.isGlutenFree,
    @required this.isVegan,
    @required this.isVegetarian,
    @required this.isLactoseFree,
  });
}
