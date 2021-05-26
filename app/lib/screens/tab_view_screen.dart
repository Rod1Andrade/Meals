import 'package:app/screens/categories_screen.dart';
import 'package:app/screens/favorite_meals_screen.dart';
import 'package:app/utils/app_messages.dart';
import 'package:flutter/material.dart';

/// Tela de controle de nagegacao entre
/// tabs
///
/// @author Rodrigo Andrade
/// @since 25/05/2021
class TabViewScreen extends StatelessWidget {
  const TabViewScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(AppMessages.TITLE_LETS_COOK),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.category)),
              Tab(icon: Icon(Icons.star)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CategoriesScreen(),
            FavoritesMealScreen(),
          ],
        ),
      ),
    );
  }
}
