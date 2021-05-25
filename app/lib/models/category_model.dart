import 'package:flutter/material.dart';

/// @author Rodrigo Andrade
/// @since 25/05/2021
class CategoryModel {
  final String id;
  final String title;
  final Color color;

  const CategoryModel({
    @required this.id,
    @required this.title,
    @required this.color,
  });
}
