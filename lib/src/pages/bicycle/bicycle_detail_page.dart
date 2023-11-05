import 'package:flutter/material.dart';

class BicycleDetailPage extends StatelessWidget {
  const BicycleDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick an option'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, const Icon(Icons.add_call));
                },
                child: const Text('Yep!'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, const Text('Hola mundo!'));
                },
                child: const Text('Nope.'),
              ),
            )
          ],
        ),
      ),
    );
  }
}