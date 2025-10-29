import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:schoolmngmtapp/app/app.locator.dart';
import 'package:schoolmngmtapp/app/app.router.dart';

class ParentRegViewModel extends BaseViewModel {
  final _navService = locator<NavigationService>();

  void navigateToLogin() {
    _navService.back();
  }

  void onContinuePressed() {
    // Registration logic (API, validation, etc.)
    // After successful registration, navigate to OTP view
    _navService.navigateToParentOtpView();
  }
}
