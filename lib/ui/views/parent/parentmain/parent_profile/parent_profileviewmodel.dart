import 'package:stacked/stacked.dart';

class ParentProfileViewModel extends BaseViewModel {
  bool darkMode = false;

  void toggleDarkMode(bool value) {
    darkMode = value;
    notifyListeners();
  }

  void logout() {
    print("Parent logged out");
  }
}
