import 'package:app/screens/categories_screen.dart';
import 'package:app/screens/favorite_meals_screen.dart';
import 'package:app/utils/app_messages.dart';
import 'package:app/widgets/meal_drawer.dart';
import 'package:flutter/material.dart';

/// Tela de controle de nagegacao entre
/// tabs
///
/// @author Rodrigo Andrade
/// @since 25/05/2021
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndexWidget = 0;

  static const List<String> _titles = const [
    AppMessages.TITLE_LETS_COOK,
    AppMessages.TITLE_FAVORITES,
  ];

  // Widgets Opicionais com base na appbar
  static const List<Widget> _widgetOptions = const [
    CategoriesScreen(),
    FavoritesMealScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndexWidget = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_titles.elementAt(_selectedIndexWidget)),
      ),
      drawer: MealDrawer(),
      body: _widgetOptions.elementAt(_selectedIndexWidget),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndexWidget,
        onTap: _onItemTapped,
        selectedItemColor: Colors.white,
        backgroundColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: AppMessages.LABEL_CATEGORIES,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: AppMessages.LABEL_FAVORITES,
          ),
        ],
      ),
    );
  }
}
