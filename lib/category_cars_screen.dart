import 'package:flutter/material.dart';

class CategoryCarsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArguments =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          routeArguments["name"],
        ),
      ),
      body: Center(
        child: Text("Cars"),
      ),
    );
  }
}
