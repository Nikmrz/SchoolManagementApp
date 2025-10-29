import 'package:schoolmngmtapp/app/app.locator.dart';
import 'package:schoolmngmtapp/app/app.router.dart';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TeacherLoginviewmodel extends BaseViewModel {
  final _navservices = locator<NavigationService>();

  void navigateToTeacherMainView() {
    _navservices.replaceWithTeacherMainView();
  }
}
