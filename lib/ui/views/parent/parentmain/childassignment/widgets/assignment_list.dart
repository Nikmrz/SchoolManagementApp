import 'package:flutter/material.dart';
import 'package:schoolmngmtapp/ui/views/parent/parentmain/childassignment/widgets/no_homework.dart';
import 'assignment_tile.dart';

class AssignmentList extends StatelessWidget {
  final List assignments;

  const AssignmentList({Key? key, required this.assignments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (assignments.isEmpty) return const NoHomeworkMessage();

    return ListView.builder(
      itemCount: assignments.length,
      itemBuilder: (context, index) {
        return AssignmentTile(data: assignments[index]);
      },
    );
  }
}
