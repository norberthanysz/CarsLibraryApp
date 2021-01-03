import 'package:flutter/material.dart';

import '../screens/category_cars_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String name;
  final Color color;

  CategoryItem(
    this.id,
    this.name,
    this.color,
  );

  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      CategoryCarsScreen.routeName,
      arguments: {
        'id': id,
        'name': name,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          name,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
