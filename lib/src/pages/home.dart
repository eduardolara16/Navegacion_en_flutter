import 'package:flutter/material.dart';
import 'package:flutter_navegacion/src/pages/direction_page.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Navegacion"),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _tabCar(),
            const DirectionPage(),
            const Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Text("Informacion de lugar"),
                  Icon(Icons.bike_scooter)
                ])),
          ],
        ),
      ),
    );
  }

  Widget _tabCar() {
    return const Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text("Informacion del vehiculo"),
      Icon(Icons.car_crash)
    ]));
  }
}
