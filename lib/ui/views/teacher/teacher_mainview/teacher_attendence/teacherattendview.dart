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
                children: [
                  Text(
                    "Attendance",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        "Class: ",
                        style: TextStyle(fontSize: 16),
                      ),
                      DropdownButton<String>(
                        value: model.selectedClass,
                        items: model.classList
                            .map((cls) => DropdownMenuItem(
                                  value: cls,
                                  child: Text(cls),
                                ))
                            .toList(),
                        onChanged: model.onClassChanged,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        "Subject: ",
                        style: TextStyle(fontSize: 16),
                      ),
                      DropdownButton<String>(
                        value: model.selectedSubject,
                        items: model.subjectList
                            .map((sub) => DropdownMenuItem(
                                  value: sub,
                                  child: Text(sub),
                                ))
                            .toList(),
                        onChanged: model.onSubjectChanged,
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
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
