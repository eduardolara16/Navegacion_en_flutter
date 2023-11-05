import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/direction/direction_detail_page.dart';

class DirectionPage extends StatelessWidget {
  const DirectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Open detail'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const DirectionDetailPage()),
          );
        },
      ),
    );
  }
}