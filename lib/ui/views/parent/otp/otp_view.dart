import 'package:flutter/material.dart';
import 'package:schoolmngmtapp/ui/views/parent/otp/opt_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ParentOtpView extends StatelessWidget {
  const ParentOtpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ParentOtpViewModel>.reactive(
      viewModelBuilder: () => ParentOtpViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),

                const Text(
                  "Verify your account",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.green,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Enter the 6-digit code sent to your number.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey[600]),
                ),
                const SizedBox(height: 30),

                // OTP input boxes
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    6,
                    (index) => SizedBox(
                      width: 45,
                      child: TextField(
                        controller: model.controllers[index],
                        focusNode: model.focusNodes[index],
                        onChanged: (value) => model.onOtpChanged(value, index),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        decoration: const InputDecoration(
                          counterText: "",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // Countdown + resend
                model.isResendEnabled
                    ? TextButton(
                        onPressed: model.resendCode,
                        child: const Text(
                          "Resend Code",
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    : Text(
                        "Resend available in ${model.remainingTime}s",
                        style: const TextStyle(color: Colors.grey),
                      ),

                const Spacer(),

                // Continue button
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: model.isOtpComplete ? model.onContinue : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
