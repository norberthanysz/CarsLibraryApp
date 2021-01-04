import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../models/car.dart';

class CarDetailsScreen extends StatelessWidget {
  static const routeName = '/car-details';

  @override
  Widget build(BuildContext context) {
    final car = ModalRoute.of(context).settings.arguments as Car;
    return Scaffold(
      appBar: AppBar(
        title: Text(car.modelName),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              car.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "${car.modelName} ${car.modelCode}",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.local_fire_department),
                    SizedBox(
                      width: 6,
                    ),
                    Text("${car.horsePower} HP"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.local_fire_department),
                    SizedBox(
                      width: 6,
                    ),
                    Text("${car.nm} Nm"),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.local_gas_station_rounded),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      describeEnum(car.fuel),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.directions_car),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      describeEnum(car.transmission),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.transform),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      describeEnum(car.drive),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text(
            "Parapeters:",
            style: Theme.of(context).textTheme.headline5,
          ),
          Container(
            height: 150,
            width: 300,
            child: NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (OverscrollIndicatorNotification overscroll) {
                overscroll.disallowGlow();
              },
              child: ListView.builder(
                itemBuilder: (ctx, index) => Text(
                  car.parameters[index],
                ),
                itemCount: car.parameters.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
