import 'package:schoolmngmtapp/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AdminDashviewModel extends BaseViewModel {
  final _navService = locator<NavigationService>();

  int totalTeachers = 45;
  int totalParents = 380;
  int totalStudents = 560;
  int totalClasses = 28;

  List<Map<String, String>> recentActivities = [
    {'title': 'New student registered', 'time': '2 mins ago'},
    {'title': 'Fee payment received', 'time': '10 mins ago'},
    {'title': 'New notice posted', 'time': '1 hour ago'},
  ];

  void navigateToSection(String section) {
    _navService.navigateTo(section);
  }
}
