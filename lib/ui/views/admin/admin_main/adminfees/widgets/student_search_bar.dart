import 'package:flutter/material.dart';

class StudentSearchBar extends StatelessWidget {
  final Function(String) onSearch;

  const StudentSearchBar({super.key, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search student by name...',
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onChanged: onSearch,
    );
  }
}
