import 'package:flutter/material.dart';

class AttendFilterBar extends StatelessWidget {
  const AttendFilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FilterChip(label: Text("All"), selected: true, onSelected: (_) {}),
        SizedBox(width: 8),
        FilterChip(label: Text("Boys"), selected: false, onSelected: (_) {}),
        SizedBox(width: 8),
        FilterChip(label: Text("Girls"), selected: false, onSelected: (_) {}),
        Spacer(),
        Text(
          "Total: 40",
          style: TextStyle(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
