import 'package:flutter/material.dart';
import 'package:schoolmngmtapp/ui/views/parent/parentmain/dashboard/dashboard_viewmodel.dart';

class StudentCard extends StatelessWidget {
  final Student student;
  const StudentCard({required this.student, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.green.shade200),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage(student.avatarUrl),
          ),
          const SizedBox(height: 8),
          Text(
            student.name,
            style: const TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            "roll :${student.roll} | class: ${student.studentClass}",
            style: const TextStyle(fontSize: 12, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
