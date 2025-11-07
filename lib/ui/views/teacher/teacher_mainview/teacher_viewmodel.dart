import 'package:stacked/stacked.dart';

class TeacherMainViewModel extends BaseViewModel {
  int currentIndex = 0;

  void setIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void onNotificationPressed() {
    // Handle notification button press
  }
  void onProfileClicked() {
    currentIndex = 3;
    notifyListeners();
  }

  void onAssignmentPressed() {
    currentIndex = 2;
    notifyListeners();
  }

  void onAttendancePressed() {
    currentIndex = 1;
    notifyListeners();
  }
}
