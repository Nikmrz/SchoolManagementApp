import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'teacher_assignment_viewmodel.dart';
import 'widgets/assignment_form.dart';

class TeacherAssignmentView extends StatelessWidget {
  const TeacherAssignmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TeacherAssignmentViewModel>.reactive(
      viewModelBuilder: () => TeacherAssignmentViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: AssignmentForm(viewModel: model),
          ),
        );
      },
    );
  }
}
