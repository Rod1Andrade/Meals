import 'package:flutter/material.dart';

import 'package:app/models/category_model.dart';

/// Mocked Data
const DUMMY_CATEGORIES = const [
  CategoryModel(
      id: 'c1',
      title: 'Italiano',
      subtitle: 'Massas saborosas e molhos deliciosos.',
      color: Colors.purple,
      imagePath: 'assets/images/food/italian.jpg'),
  CategoryModel(
      id: 'c2',
      title: 'Rápido & Fácil',
      subtitle: 'Prático, fácil e saboroso.',
      color: Colors.red,
      imagePath: 'assets/images/food/fast.jpg'),
  CategoryModel(
      id: 'c3',
      title: 'Hamburgers',
      subtitle: 'Os melhores hamburguers.',
      color: Colors.orange,
      imagePath: 'assets/images/food/burger.jpg'),
  CategoryModel(
      id: 'c4',
      title: 'Alemã',
      subtitle: 'Culinaria com sabores fortes.',
      color: Colors.amber,
      imagePath: 'assets/images/food/germany.jpg'),
  CategoryModel(
      id: 'c5',
      title: 'Leve & Saudável',
      subtitle: 'Comidas leves para manter a dieta.',
      color: Colors.amber,
      imagePath: 'assets/images/food/healthy.jpg'),
  CategoryModel(
      id: 'c6',
      title: 'Exótica',
      subtitle: 'É sempre bom experimentar novos sabores.',
      color: Colors.green,
      imagePath: 'assets/images/food/exotic.jpg'),
  CategoryModel(
      id: 'c7',
      title: 'Café da Manhã',
      subtitle: 'A primeira refeição do dia com muito sabor.',
      color: Colors.lightBlue,
      imagePath: 'assets/images/food/breakfast.jpg'),
  CategoryModel(
      id: 'c8',
      title: 'Asiática',
      subtitle: 'Uma culinária exótica e muito saborosa..',
      color: Colors.lightGreen,
      imagePath: 'assets/images/food/japanese.jpg'),
  CategoryModel(
      id: 'c9',
      title: 'Francesa',
      subtitle: 'O sabor francês é sem comparação.',
      color: Colors.pink,
      imagePath: 'assets/images/food/french.jpg'),
  CategoryModel(
      id: 'c10',
      title: 'Verão',
      subtitle: 'Comidas para um dia quente e alegre.',
      color: Colors.teal,
      imagePath: 'assets/images/food/summer.jpg'),
];
