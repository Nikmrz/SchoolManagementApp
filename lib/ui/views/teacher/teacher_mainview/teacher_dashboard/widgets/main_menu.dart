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
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 18),
        GridView.count(
          crossAxisCount: 3,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: const [
            MenuCard(
                icon: Icons.check_circle,
                title: "Attendance",
                color: Colors.blue),
            MenuCard(
                icon: Icons.people,
                title: "Students",
                color: Colors.blueAccent),
            MenuCard(
                icon: Icons.assignment,
                title: "Homework",
                color: Colors.lightBlue),
            MenuCard(icon: Icons.book, title: "Subjects", color: Colors.indigo),
            MenuCard(icon: Icons.event, title: "Schedule", color: Colors.cyan),
            MenuCard(
                icon: Icons.campaign, title: "Notices", color: Colors.teal),
            MenuCard(icon: Icons.score, title: "Exams", color: Colors.indigo),
            MenuCard(icon: Icons.event, title: "Schedule", color: Colors.cyan),
            MenuCard(
                icon: Icons.campaign, title: "Notices", color: Colors.teal),
          ],
        )
      ],
    );
  }
}
