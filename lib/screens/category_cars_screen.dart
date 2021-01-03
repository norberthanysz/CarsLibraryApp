import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/car_item.dart';

class CategoryCarsScreen extends StatelessWidget {
  static const routeName = '/category-cars';
  @override
  Widget build(BuildContext context) {
    final routeArguments =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final categoryCars = DUMMY_CARS.where((car) {
      return car.categoryIds.contains(routeArguments['id']);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          routeArguments["name"],
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return CarItem(categoryCars[index]);
        },
        itemCount: categoryCars.length,
      ),
    );
  }
}
