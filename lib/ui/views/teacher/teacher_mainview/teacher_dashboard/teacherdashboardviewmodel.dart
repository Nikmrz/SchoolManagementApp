import 'package:stacked/stacked.dart';

class TeacherDashboardViewModel extends BaseViewModel {
  List<Map<String, String>> assignedClasses = [
    {"class": "10A", "subject": "Maths"},
    {"class": "9B", "subject": "Science"},
    {"class": "8C", "subject": "Computer"},
  ];

  void addNewClass() {
    assignedClasses.add({"class": "11A", "subject": "Physics"});
    notifyListeners();
  }
}
