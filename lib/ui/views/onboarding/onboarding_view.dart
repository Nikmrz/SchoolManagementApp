import 'package:flutter/material.dart';
import 'package:schoolmngmtapp/ui/views/onboarding/onboarding_viewmodel.dart';
import 'package:schoolmngmtapp/ui/views/onboarding/widget/onboarding1.dart';
import 'package:schoolmngmtapp/ui/views/onboarding/widget/onboarding2.dart';
import 'package:schoolmngmtapp/ui/views/onboarding/widget/onboarding3.dart';
import 'package:stacked/stacked.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => OnboardingViewModel(),
      builder: (
        context,
        model,
        child,
      ) {
        return Scaffold(
            appBar: AppBar(
              actions: [
                TextButton(
                  onPressed: model.skip,
                  child: const Text('Skip'),
                ),
              ],
            ),
            body: Column(
              children: [
                Expanded(
                  child: PageView(
                    controller: model.pageController,
                    onPageChanged: model.onPageChanged,
                    children: const [
                      OnboardingPage1(),
                      OnboardingPage2(),
                      OnboardingPage3(),
                    ],
                  ),
                ),
                //dotindicator
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                        (index) => AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          height: 10,
                          width: model.currentpage == index ? 24 : 10,
                          decoration: BoxDecoration(
                            color: model.currentpage == index
                                ? Colors.blue
                                : Colors.grey[400],
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: model.nextPage,
                      child: Icon(Icons.arrow_forward),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20),
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ));
      },
    );
  }
}
