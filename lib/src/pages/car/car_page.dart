import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/models/car.dart';
import 'package:flutter_application_1/src/pages/car/car_detail_page.dart';

class CarPage extends StatelessWidget {
  const CarPage({super.key, required this.cars});
  final List<Car> cars;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cars[index].make),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CarDetailPage(detailCar: cars[index]),
                ),
              );
            },
          );
        });
  }
}