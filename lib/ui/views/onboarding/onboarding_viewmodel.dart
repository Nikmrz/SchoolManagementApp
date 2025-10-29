import 'package:flutter/material.dart';
import 'package:schoolmngmtapp/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:schoolmngmtapp/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';

class OnboardingViewModel extends BaseViewModel {
  final NavigationService _navService = locator<NavigationService>();
  String title = "onboarding";
  int currentpage = 0;
  final PageController pageController = PageController();

  void onPageChanged(int index) {
    currentpage = index;
    notifyListeners();
  }

  void nextPage() {
    if (currentpage < 2) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      _navService.replaceWithRoleSelectionView();
    }
  }

  void skip() {
    _navService.replaceWithRoleSelectionView();
  }
}
