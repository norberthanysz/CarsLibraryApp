import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../models/car.dart';

class CarItem extends StatelessWidget {
  final Car car;

  CarItem(this.car);

  void selectMeal() {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectMeal,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    car.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 220,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    color: Colors.black54,
                    child: Text(
                      car.modelName,
                      style: TextStyle(fontSize: 26, color: Colors.white),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
