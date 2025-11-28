import 'package:flutter/material.dart';

class FeeStatusBadge extends StatelessWidget {
  final bool paid;
  const FeeStatusBadge({super.key, required this.paid});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: paid ? Colors.green : Colors.red,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        paid ? 'Paid' : 'Due',
        style: const TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }
}
