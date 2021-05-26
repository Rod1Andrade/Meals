import 'package:app/data/dummy_data.dart';
import 'package:app/models/meal_model.dart';
import 'package:app/models/settings_model.dart';
import 'package:app/screens/category_meals_screen.dart';
import 'package:app/screens/home_screen.dart';
import 'package:app/screens/meal_detail_screen.dart';
import 'package:app/screens/setting_screen.dart';
import 'package:app/utils/app_messages.dart';
import 'package:app/utils/app_routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(Meals());

/// Aplicação de Receitas de refeções.
///
/// @author Rodrigo Andrade
/// @since 25/05/2021
class Meals extends StatefulWidget {
  @override
  _MealsState createState() => _MealsState();
}

class _MealsState extends State<Meals> {
  // Lista de dados
  List<MealModel> _avaliableMeals = DUMMY_MEALS;

  // Modelo de configuracao
  SettingsModel _settingsModel = SettingsModel();

  // Aplica os filtros com base nos dados de configuracao
  void _applyFilters(SettingsModel settingsModel) {
    setState(() {
      _avaliableMeals = DUMMY_MEALS.where((mealModel) {
        bool filterGluten = settingsModel.isGlutenFree && !mealModel.isGlutenFree;
        bool filterLactose =
            settingsModel.isLactoseFree && !mealModel.isLactoseFree;
        bool filterVegetarian =
            settingsModel.isVegetarian && !mealModel.isVegetarian;
        bool filterVegan = settingsModel.isVegan && !mealModel.isVegan;
        return !filterVegan &&
            !filterLactose &&
            !filterVegetarian &&
            !filterGluten;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      title: AppMessages.APP_TITLE,
      initialRoute: AppRoutes.HOME,
      routes: {
        AppRoutes.HOME: (context) => HomeScreen(),
        AppRoutes.CATEGORY_MEAL: (context) => CategoryMealScreen(
              meals: _avaliableMeals,
            ),
        AppRoutes.MEAL_DETAIL: (context) => MealDetailScreen(),
        AppRoutes.SETTINGS: (context) => SettingScreen(
              settingsModel: _settingsModel,
              applyChanges: _applyFilters,
            ),
      },
    );
  }
}
