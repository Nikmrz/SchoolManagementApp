import 'package:schoolmngmtapp/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AdminMainviewmodel extends BaseViewModel {
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

  void onProfilePressed() {
    // Navigate to profile page or settings
    currentIndex = 3; // switch to profile tab
    notifyListeners();
  }
}
