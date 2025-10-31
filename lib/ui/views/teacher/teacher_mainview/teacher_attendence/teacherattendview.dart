import 'package:flutter/material.dart';
import 'package:schoolmngmtapp/ui/views/teacher/teacher_mainview/teacher_attendence/teacherattendviewmodel.dart';
import 'package:stacked/stacked.dart';
import 'widgets/attend_filter_bar.dart';
import 'widgets/attend_table_header.dart';
import 'widgets/attend_student_list.dart';
import 'widgets/attend_submit_button.dart';

class Teacherattendview extends StatelessWidget {
  const Teacherattendview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => TeacherattendviewModel(),
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Class: 7'),
                  Text('Subject: Mathematics'),
                  SizedBox(height: 18),
                  Text(
                    "Attendance",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 14),
                  AttendFilterBar(),
                  SizedBox(height: 12),
                  AttendTableHeader(),
                  Expanded(child: AttendStudentList()),
                  SizedBox(height: 14),
                  AttendSubmitButton(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
