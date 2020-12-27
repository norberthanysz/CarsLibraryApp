import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String name;
  final Color color;

  CategoryItem(
    this.name,
    this.color,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
