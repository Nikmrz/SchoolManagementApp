import 'package:schoolmngmtapp/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:schoolmngmtapp/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';

class UserAgreementViewModel extends BaseViewModel {
  final _navService = locator<NavigationService>();

  bool agreed = false;

  void toggleAgreement() {
    agreed = !agreed;
    notifyListeners();
  }

  void onContinuePressed() {
    if (agreed) {
      _navService.navigateToParentLoginview();
    }
  }
}
