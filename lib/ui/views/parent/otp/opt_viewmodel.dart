import 'dart:async';
import 'package:flutter/material.dart';
import 'package:schoolmngmtapp/app/app.locator.dart';
import 'package:schoolmngmtapp/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ParentOtpViewModel extends BaseViewModel {
  final _navService = locator<NavigationService>();
  final List<TextEditingController> controllers =
      List.generate(6, (_) => TextEditingController());
  final List<FocusNode> focusNodes = List.generate(6, (_) => FocusNode());

  bool isOtpComplete = false;
  int remainingTime = 60;
  bool isResendEnabled = false;
  Timer? _timer;

  ParentOtpViewModel() {
    _startTimer();
  }

  void _startTimer() {
    remainingTime = 60;
    isResendEnabled = false;
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (remainingTime > 0) {
        remainingTime--;
        notifyListeners();
      } else {
        isResendEnabled = true;
        timer.cancel();
        notifyListeners();
      }
    });
  }

  void onOtpChanged(String value, int index) {
    if (value.isNotEmpty && index < 5) {
      focusNodes[index + 1].requestFocus();
    }

    if (value.isEmpty && index > 0) {
      focusNodes[index - 1].requestFocus();
    }

    _checkOtpComplete();
  }

  void _checkOtpComplete() {
    final otp = controllers.map((c) => c.text).join();
    isOtpComplete = otp.length == 6;
    notifyListeners();
  }

  void resendCode() {
    // TODO: Implement resend logic (API call or backend trigger)
    _startTimer();
  }

  void onContinue() {
    final otp = controllers.map((c) => c.text).join();
    // TODO: verify OTP via API call or logic
    debugPrint("OTP Entered: $otp");
    _navService.navigateToUserAgreementView();
    // Navigate to next screen (e.g., Agreement view)
  }

  @override
  void dispose() {
    for (var c in controllers) {
      c.dispose();
    }
    for (var f in focusNodes) {
      f.dispose();
    }
    _timer?.cancel();
    super.dispose();
  }
}
