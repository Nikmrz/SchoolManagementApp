import 'package:stacked/stacked.dart';

class TeacherDashboardViewModel extends BaseViewModel {
  List<Map<String, String>> assignedClasses = [
    {"class": "10A", "subject": "Maths"},
    {"class": "9B", "subject": "Science"},
  ];

  void addNewClass() {
    notifyListeners();
  }
}
