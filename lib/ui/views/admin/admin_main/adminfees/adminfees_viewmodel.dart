import 'package:stacked/stacked.dart';
import 'models/fee_student_model.dart';

class AdminFeeViewModel extends BaseViewModel {
  List<FeeStudentModel> students = [
    FeeStudentModel(name: 'John Doe', rollNo: '01', className: '7A'),
    FeeStudentModel(name: 'Jane Smith', rollNo: '02', className: '7A'),
    FeeStudentModel(name: 'Alice Brown', rollNo: '03', className: '8B'),
  ];

  List<FeeStudentModel> filteredStudents = [];
  FeeStudentModel? selectedStudent;

  AdminFeeViewModel() {
    filteredStudents = List.from(students);
  }

  // Dummy totals
  double get totalCollected => students.fold(0, (prev, s) => prev + 5000);
  double get totalRemaining => students.fold(0, (prev, s) => prev + 1000);

  void onSearchStudent(String query) {
    if (query.isEmpty) {
      filteredStudents = List.from(students);
    } else {
      filteredStudents = students
          .where((student) =>
              student.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    notifyListeners();
  }

  void setSelectedStudent(FeeStudentModel student) {
    selectedStudent = student;
    notifyListeners();
  }
}
