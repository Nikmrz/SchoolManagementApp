import 'package:stacked/stacked.dart';
import 'package:schoolmngmtapp/app/app.locator.dart';
import 'package:schoolmngmtapp/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class ParentLoginviewmodel extends BaseViewModel {
  final _navService = locator<NavigationService>();

  bool rememberMe = false;

  void toggleRememberMe(bool? value) {
    rememberMe = value ?? false;
    notifyListeners();
  }

  void onForgotPassword() {
    // Navigate to forgot password view (if exists)
    //_navService.navigateTo(Routes.parentForgotPasswordView);
  }

  void navigateToRegister() {
    _navService.navigateToParentRegView();
  }

  void onContinuePressed() {
    _navService.replaceWithParentMainview();
  }
}
