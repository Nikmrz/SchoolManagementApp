import 'package:flutter/material.dart';
import 'package:schoolmngmtapp/ui/views/teacher/teacher_mainview/teacher_dashboard/teacherdashboardviewmodel.dart';
import 'class_tile.dart';

class AssignedClassesSection extends StatelessWidget {
  final TeacherDashboardViewModel model;
  const AssignedClassesSection({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Assigned Classes",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 110,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              for (var c in model.assignedClasses)
                ClassTile(className: c["class"]!, subject: c["subject"]!),
              AddClassTile(onTap: model.addNewClass),
            ],
          ),
        ),
      ],
    );
  }
}
