import 'package:flutter/material.dart';

class ChildSelector extends StatelessWidget {
  final List children;
  final int selectedChild;
  final Function(int) onChildTap;

  const ChildSelector({
    Key? key,
    required this.children,
    required this.selectedChild,
    required this.onChildTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: children.map((child) {
        bool isSelected = child["id"] == selectedChild;
        return GestureDetector(
          onTap: () => onChildTap(child["id"]),
          child: Container(
            margin: const EdgeInsets.only(right: 12),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
                color: isSelected ? Colors.blue.shade100 : Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    color: isSelected ? Colors.blue : Colors.transparent)),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(child["avatar"]),
                ),
                const SizedBox(width: 8),
                Text(
                  child["name"],
                  style: TextStyle(
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
