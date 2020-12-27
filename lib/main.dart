import 'package:flutter/material.dart';

import './categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cars App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.deepOrange,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
                headline6: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
      ),
      home: CategoriesScreen(),
    );
  }
}
