import 'package:app/models/category_model.dart';
import 'package:flutter/material.dart';

/// @author Rodrigo Andrade
/// @since 25/05/2021
class CategoryItem extends StatelessWidget {
  final CategoryModel categoryModel;

  const CategoryItem(this.categoryModel);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        elevation: 5.0,
        clipBehavior: Clip.antiAlias,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Image.asset(
            categoryModel.imagePath,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            color: Colors.black.withOpacity(.9),
            child: ListTile(
              visualDensity: VisualDensity.compact,
              subtitle: Text(
                categoryModel.subtitle,
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.caption.copyWith(
                  fontSize: 11,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400
                ),
              ),
              title: Text(categoryModel.title,
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                        color: Colors.white,
                      )),
            ),
          ),
        ]),
      ),
    );
  }
}
