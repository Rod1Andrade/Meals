import 'package:app/utils/app_messages.dart';
import 'package:flutter/material.dart';

/// Drawer componente
///
/// @author Rodrigo Andrade
/// @since 25/05/2021
class MealDrawer extends StatelessWidget {
  const MealDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            color: Theme.of(context).primaryColor,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .18,
            alignment: Alignment.bottomCenter,
            child: Text(
              AppMessages.TITLE_LETS_COOK,
              style: Theme.of(context).textTheme.headline4.copyWith(
                fontWeight: FontWeight.bold
              )
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.restaurant),
            title: Text(AppMessages.LABEL_MEALS),
            onTap: () {},
          ),ListTile(
            leading: Icon(Icons.settings),
            title: Text(AppMessages.LABEL_CONFIGS),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
