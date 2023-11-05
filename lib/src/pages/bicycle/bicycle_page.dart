import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/bicycle/bicycle_detail_page.dart';

class BicyclePage extends StatefulWidget {
  const BicyclePage({super.key});

  @override
  State<BicyclePage> createState() => _BicyclePageState();
}

class _BicyclePageState extends State<BicyclePage> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: const Text('Pick an option, any option!'),
    );
  }

  Future<void> _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const BicycleDetailPage()),
    );
    if (!mounted) return;
    if (result == null) return;
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: result));
  }
}