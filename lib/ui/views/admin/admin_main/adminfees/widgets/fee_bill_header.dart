import 'package:flutter/material.dart';
import '../models/fee_student_model.dart';

class FeeBillHeader extends StatelessWidget {
  final FeeStudentModel student;
  final double totalDue;

  const FeeBillHeader(
      {super.key, required this.student, required this.totalDue});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Name: ${student.name}', style: const TextStyle(fontSize: 18)),
        Text('Class: ${student.className}',
            style: const TextStyle(fontSize: 16)),
        Text('Roll: ${student.rollNo}', style: const TextStyle(fontSize: 16)),
        Text('Status: ${totalDue <= 0 ? 'Paid' : 'Pending'}',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: totalDue <= 0 ? Colors.green : Colors.red)),
      ],
    );
  }
}
