import 'package:flutter/material.dart';
import 'package:schoolmngmtapp/ui/views/teacher/teacher_mainview/teacher_dashboard/teacherdashboardviewmodel.dart';
import 'package:schoolmngmtapp/ui/views/teacher/teacher_mainview/teacher_dashboard/widgets/assigned_class_section.dart';
import 'package:schoolmngmtapp/ui/views/teacher/teacher_mainview/teacher_dashboard/widgets/main_menu.dart';
import 'package:stacked/stacked.dart';
import 'widgets/greeting_section.dart';

class TeacherDashboardView extends StatelessWidget {
  const TeacherDashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => TeacherDashboardViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GreetingSection(name: "Mr. Dinesh Rai"),
                const SizedBox(height: 24),
                AssignedClassesSection(model: model),
                const SizedBox(height: 30),
                const MainMenuSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
