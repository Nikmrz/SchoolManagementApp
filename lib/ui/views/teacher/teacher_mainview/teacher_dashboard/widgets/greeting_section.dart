import 'package:flutter/material.dart';

class GreetingSection extends StatelessWidget {
  final String name;
  const GreetingSection({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Hello,",
          style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey),
        ),
        Text(
          name,
          style: const TextStyle(
              fontSize: 22, fontWeight: FontWeight.w500, color: Colors.black87),
        ),
      ],
    );
  }
}
