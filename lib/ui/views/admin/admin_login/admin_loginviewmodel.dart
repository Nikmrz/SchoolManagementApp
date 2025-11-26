import 'package:schoolmngmtapp/app/app.locator.dart';
import 'package:schoolmngmtapp/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart' show NavigationService;

class AdminLoginviewModel extends BaseViewModel {
  final _navService = locator<NavigationService>();

  void login() {
    _navService.replaceWithAdminMainview();
  }
}
