import 'package:flutter/material.dart';
import 'menu_card.dart';

class MainMenuSection extends StatelessWidget {
  const MainMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Main Menu",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 16),
        GridView.count(
          crossAxisCount: 3,
          shrinkWrap: true,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            MenuCard(
                icon: Icons.check_circle,
                title: "Attendance",
                color: Colors.green),
            MenuCard(
                icon: Icons.people, title: "Students", color: Colors.orange),
            MenuCard(
                icon: Icons.assignment, title: "Homework", color: Colors.blue),
            MenuCard(icon: Icons.book, title: "Subjects", color: Colors.purple),
            MenuCard(icon: Icons.event, title: "Schedule", color: Colors.teal),
            MenuCard(
                icon: Icons.chat, title: "Notices", color: Colors.redAccent),
          ],
        ),
      ],
    );
  }
}
