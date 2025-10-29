import 'package:flutter/material.dart';
import 'package:schoolmngmtapp/ui/views/parent/useragreement/useragreementviewmodel.dart';
import 'package:stacked/stacked.dart';

class UserAgreementView extends StatelessWidget {
  const UserAgreementView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => UserAgreementViewModel(),
      builder: (
        BuildContext context,
        UserAgreementViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Center(
                    child: Text('User Agreement & Terms of Service',
                        style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w900,
                            color: Colors.green)),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 16),
                    child: const Text(
                      '''
Welcome to our School Management App!

By creating an account and using this app, you agree to the following terms and conditions:

1. Purpose of the App
This app is designed to help parents stay informed about their child’s school activities, events, and academic progress.
It should be used only for personal and educational purposes related to the school.

2. Account Responsibility
You are responsible for keeping your login details secure and not sharing them with others.
Any activity carried out under your account will be considered your responsibility.

3. Data Privacy
The app may collect and store information such as your name, contact details, and child’s school information.
This data will only be used for school-related communication and services.
We will not share your personal information with third parties without your consent.

4. Parent Conduct
You agree to use the app respectfully and not upload, share, or post any harmful, offensive, or misleading content.
Misuse of the app may result in suspension or termination of your account.

5. School Communication
All updates, notifications, and announcements shared in the app are considered official communication from the school.
Parents are encouraged to check the app regularly to stay informed.

6. Limitations
While we strive to provide accurate and up-to-date information, the school is not liable for any errors, delays, or technical issues that may occur in the app.

Agreement to Terms
By clicking “Accept”, you confirm that you have read, understood, and agree to follow these terms and conditions.
If you do not agree, please click “Decline” and you will not be able to complete registration.
                      ''',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  child: Row(
                    children: [
                      Checkbox(
                        value: model.agreed,
                        onChanged: (value) => model.toggleAgreement(),
                      ),
                      const Expanded(
                        child: Text(
                          "I agree to all terms and conditions",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),

                // Continue button (fixed at bottom)
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: model.agreed
                          ? model.onContinuePressed
                          : null, // disabled until agreed
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        "Continue",
                        style: TextStyle(fontSize: 18),
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
