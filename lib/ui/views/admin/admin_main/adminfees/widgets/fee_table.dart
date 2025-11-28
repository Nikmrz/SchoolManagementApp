import 'package:flutter/material.dart';
import '../models/fee_record_model.dart';
import 'fee_status_badge.dart';

class FeeTable extends StatelessWidget {
  final List<FeeRecordModel> records;
  const FeeTable({super.key, required this.records});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const [
        DataColumn(label: Text('SN')),
        DataColumn(label: Text('Amount')),
        DataColumn(label: Text('Due Date')),
        DataColumn(label: Text('Status')),
      ],
      rows: records.map((record) {
        return DataRow(
          cells: [
            DataCell(Text(record.sn.toString())),
            DataCell(Text('\$${record.amount.toStringAsFixed(2)}')),
            DataCell(Text(record.dueDate)),
            DataCell(FeeStatusBadge(paid: record.paid)),
          ],
        );
      }).toList(),
    );
  }
}
