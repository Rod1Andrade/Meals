import 'package:app/utils/app_messages.dart';
import 'package:app/widgets/meal_drawer.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppMessages.TITLE_SETTINGS),
        centerTitle: true,
      ),
      drawer: MealDrawer(),
      body: Center(
        child: Text('Configs :D'),
      ),
    );
  }
}
