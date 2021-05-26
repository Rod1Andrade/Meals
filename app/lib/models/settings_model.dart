/// Classe de modelo para definicao de configuracos
///
/// @author Rodrigo Andrade
/// @since 26/05/2021
class SettingsModel {
  bool isGlutenFree;
  bool isVegan;
  bool isVegetarian;
  bool isLactoseFree;

  SettingsModel({
    this.isGlutenFree = false,
    this.isVegan = false,
    this.isVegetarian = false,
    this.isLactoseFree = false,
  });
}
