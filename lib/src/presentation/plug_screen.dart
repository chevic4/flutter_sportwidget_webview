import 'package:flutter/material.dart';

class PlugScreen extends StatelessWidget {
  const PlugScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        const Text('Sport Screeeen!'),
        FilledButton.tonal(
          onPressed: () {},
          child: const Text('refresh'),
        )
      ]),
    );
  }
}
