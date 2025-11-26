import 'package:stacked/stacked.dart';

class TeacherattendviewModel extends BaseViewModel {
  void submitAttendance() {
    print("Attendance Submitted: ");
  }

  List<String> classList = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];

  // Subjects based on class
  Map<String, List<String>> classWiseSubjects = {
    "1": ["Math", "English"],
    "2": ["Math", "Science"],
    "3": ["Math", "English", "Science"],
    "4": ["Math", "English", "Science", "Nepali"],
    "5": ["Math", "Science", "Computer"],
    "6": ["Math", "Science", "EPH"],
    "7": ["Mathematics", "Science", "Computer Science"],
    "8": ["Math", "Science", "Optional Math"],
    "9": ["Mathematics", "Science", "Computer", "OBTE"],
    "10": ["Mathematics", "Science", "English", "OBTE"],
  };

  String selectedClass = "7";
  String selectedSubject = "Mathematics";

  List<String> get subjectList => classWiseSubjects[selectedClass] ?? [];

  void onClassChanged(String? newClass) {
    if (newClass == null) return;

    selectedClass = newClass;

    selectedSubject = subjectList.first;

    notifyListeners();
  }

  void onSubjectChanged(String? newSubject) {
    if (newSubject == null) return;

    selectedSubject = newSubject;
    notifyListeners();
  }
}
