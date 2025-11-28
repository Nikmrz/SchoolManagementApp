import 'package:flutter/material.dart';
import '../models/fee_student_model.dart';
import '../models/fee_record_model.dart';
import '../widgets/fee_bill_header.dart';
import '../widgets/fee_table.dart';

class StudentFeePage extends StatelessWidget {
  final FeeStudentModel student;
  const StudentFeePage({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    final records = [
      FeeRecordModel(sn: 1, amount: 5000, dueDate: '2025-12-01', paid: true),
      FeeRecordModel(sn: 2, amount: 1000, dueDate: '2026-01-01', paid: false),
    ];

    final totalDue =
        records.fold(0.0, (sum, rec) => sum + (rec.paid ? 0 : rec.amount));

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true, // this is default, ensures back button
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Student Fee Details",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent)),
            const SizedBox(height: 20),
            FeeBillHeader(student: student, totalDue: totalDue),
            const SizedBox(height: 16),
            Expanded(child: FeeTable(records: records)),
          ],
        ),
      ),
    );
  }
}
