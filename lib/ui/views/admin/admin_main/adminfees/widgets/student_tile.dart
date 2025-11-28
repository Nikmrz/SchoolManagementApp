import 'package:flutter/material.dart';
import '../models/fee_student_model.dart';

class StudentTile extends StatelessWidget {
  final FeeStudentModel student;
  final VoidCallback onTap;

  const StudentTile({super.key, required this.student, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        onTap: onTap,
        title: Text(student.name),
        subtitle: Text('Class: ${student.className} | Roll: ${student.rollNo}'),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}
