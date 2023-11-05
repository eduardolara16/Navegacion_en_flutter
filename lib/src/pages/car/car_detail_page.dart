import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/models/car.dart';

class CarDetailPage extends StatelessWidget {
  const CarDetailPage({super.key, required this.detailCar});
  final Car detailCar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(detailCar.make),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(detailCar.model),
      ),
    );
  }
}