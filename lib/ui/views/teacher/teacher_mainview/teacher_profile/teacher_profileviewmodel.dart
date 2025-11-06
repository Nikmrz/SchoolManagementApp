import 'package:stacked/stacked.dart';

class TeacherProfileViewModel extends BaseViewModel {
  bool darkMode = false;

  void toggleDarkMode(bool value) {
    darkMode = value;
    notifyListeners();
  }

  void logout() {
    // TODO: teacher logout logic later
    print("Teacher logged out");
  }
}
