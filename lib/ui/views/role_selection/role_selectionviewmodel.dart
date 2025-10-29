import 'package:schoolmngmtapp/app/app.locator.dart';
import 'package:schoolmngmtapp/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RoleSelectionViewModel extends BaseViewModel {
  final NavigationService navService = locator<NavigationService>();
  void onadminpressed() {
    navService.navigateToAdminLoginview();
  }

  void onteacherpressed() {
    navService.navigateToTeacherLoginview();
  }

  void onparentpressed() {
    navService.navigateToParentLoginview();
  }
}
