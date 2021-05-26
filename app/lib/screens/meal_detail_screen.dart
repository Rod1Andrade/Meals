import 'package:app/models/meal_model.dart';
import 'package:app/utils/app_messages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  final void Function(MealModel mealModel) onFavorited;
  final bool Function(MealModel mealModel) isFavorite;

  const MealDetailScreen({
    this.onFavorited,
    this.isFavorite,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MealModel mealModel =
        ModalRoute.of(context).settings.arguments as MealModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(mealModel.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: Image.network(
                mealModel.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                AppMessages.TITLE_INGREDIENTS,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            _CardContainer(
              child: ListView.builder(
                itemCount: mealModel.ingredients.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 2,
                      vertical: 3,
                    ),
                    color: Theme.of(context).accentColor,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 10,
                        ),
                        child: Text(mealModel.ingredients[index])),
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                AppMessages.TITLE_STEPS,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            _CardContainer(
              child: ListView.builder(
                itemCount: mealModel.steps.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: Text('${index + 1}'),
                        ),
                        title: Text(mealModel.steps[index]),
                      ),
                      Divider(),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          onFavorited(mealModel);
        },
        child:
            isFavorite(mealModel) ?  Icon(Icons.star) : Icon(Icons.star_border),
      ),
    );
  }
}

/// Card Container
class _CardContainer extends StatelessWidget {
  const _CardContainer({Key key, @required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      padding: const EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width * .9,
      constraints: BoxConstraints(
        maxHeight: 187,
        minWidth: 50,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
          width: .9,
        ),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      child: child,
    );
  }
}
