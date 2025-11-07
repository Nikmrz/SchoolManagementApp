import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

class TeacherAssignmentViewModel extends BaseViewModel {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  String? selectedClass;
  String? selectedSubject;
  DateTime selectedDueDate = DateTime.now();

  List<String> assignedClasses = ["Class 6", "Class 7", "Class 8"];
  List<String> assignedSubjects = ["Math", "English"];

  void selectClass(String? value) {
    selectedClass = value;
    notifyListeners();
  }

  void selectSubject(String? value) {
    selectedSubject = value;
    notifyListeners();
  }

  void selectDueDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: selectedDueDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
    );
    if (picked != null) {
      selectedDueDate = picked;
      notifyListeners();
    }
  }

  void submitAssignment() {
    // later: connect backend (Rails)
    debugPrint("""
Assignment Created:
Class: $selectedClass
Subject: $selectedSubject
Title: ${titleController.text}
Description: ${descriptionController.text}
Due: $selectedDueDate
""");
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }
}
