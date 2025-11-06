import 'package:schoolmngmtapp/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ParentMainviewModel extends BaseViewModel {
  final _navService = locator<NavigationService>();

  int currentIndex = 0;

  void setIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void onNotificationPressed() {
    _navService.navigateTo('/notifications');
    // Navigate to notification page or open modal
  }

  void onAssignmentPressed() {
    currentIndex = 1; // switch to assignment tab
    notifyListeners();
  }

  void onProfilePressed() {
    currentIndex = 3; // switch to profile tab
    notifyListeners();
  }

  void onNoticePressed() {
    currentIndex = 2; // switch to notice tab
    notifyListeners();
  }
}
