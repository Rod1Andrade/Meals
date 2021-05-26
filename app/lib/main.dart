import 'package:app/screens/categories_screen.dart';
import 'package:app/screens/category_meals_screen.dart';
import 'package:app/screens/meal_detail_screen.dart';
import 'package:app/screens/home_screen.dart';
import 'package:app/screens/setting_screen.dart';
import 'package:app/utils/app_messages.dart';
import 'package:app/utils/app_routes.dart';
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
      theme: ThemeData(primarySwatch: Colors.amber),
      title: AppMessages.APP_TITLE,
      initialRoute: AppRoutes.HOME,
      routes: {
        AppRoutes.HOME: (context) => HomeScreen(),
        AppRoutes.CATEGORY_MEAL: (context) => CategoryMealScreen(),
        AppRoutes.MEAL_DETAIL: (context) => MealDetailScreen(),
        AppRoutes.SETTINGS: (context) => SettingScreen(),
      },
    );
  }
}
