import 'package:flutter/material.dart';

/// @author Rodrigo Andrade
/// @since 25/05/2021
class CategoryModel {
  final String id;
  final String title;
  final String subtitle;
  final Color color;
  final String imagePath;

  const CategoryModel({
    @required this.id,
    @required this.title,
    this.subtitle,
    @required this.color,
    this.imagePath
  });
}
