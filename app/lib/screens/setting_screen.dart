import 'package:app/models/settings_model.dart';
import 'package:app/utils/app_messages.dart';
import 'package:app/widgets/meal_drawer.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  final SettingsModel settingsModel;
  final void Function(SettingsModel settingsModel) applyChanges;

  const SettingScreen({
    this.applyChanges,
    this.settingsModel,
    Key key,
  }) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  SettingsModel _settingsModel;

  @override
  void initState() {
    super.initState();
    _settingsModel = widget.settingsModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppMessages.TITLE_SETTINGS),
        centerTitle: true,
      ),
      drawer: MealDrawer(),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                AppMessages.LABEL_CONFIGS,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              padding: EdgeInsets.all(20.0),
              width: double.infinity,
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: ListView(
                children: [
                  SwitchListTile(
                    title: Text(AppMessages.LABEL_GLUTEN),
                    subtitle: Text(AppMessages.SUBTITLE_GLUTEN),
                    value: _settingsModel.isGlutenFree,
                    onChanged: (value) {
                      setState(() => _settingsModel.isGlutenFree = value);
                      widget.applyChanges(_settingsModel);
                    },
                  ),
                  SwitchListTile(
                    title: Text(AppMessages.LABEL_LACTOSE),
                    subtitle: Text(AppMessages.SUBTITLE_LACTOSE),
                    value: _settingsModel.isLactoseFree,
                    onChanged: (value) {
                      setState(() => _settingsModel.isLactoseFree = value);
                      widget.applyChanges(_settingsModel);
                    },
                  ),
                  SwitchListTile(
                    title: Text(AppMessages.LABEL_VEGETARIAN),
                    subtitle: Text(AppMessages.SUBTITLE_VEGETARIAN),
                    value: _settingsModel.isVegetarian,
                    onChanged: (value) {
                      setState(() => _settingsModel.isVegetarian = value);
                      widget.applyChanges(_settingsModel);
                    },
                  ),
                  SwitchListTile(
                    title: Text(AppMessages.LABEL_VEGAN),
                    subtitle: Text(AppMessages.SUBTITLE_VEGAN),
                    value: _settingsModel.isVegan,
                    onChanged: (value) {
                      setState(() => _settingsModel.isVegan = value);
                      widget.applyChanges(_settingsModel);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
