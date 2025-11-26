import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'teacherdashboardviewmodel.dart';
import 'widgets/assigned_class_section.dart';
import 'widgets/greeting_section.dart';
import 'widgets/main_menu.dart';

class TeacherDashboardView extends StatelessWidget {
  const TeacherDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => TeacherDashboardViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          body: SafeArea(
            child: Stack(
              children: [
                SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const GreetingSection(name: "MS. Meena Sherpa"),

                      const SizedBox(height: 28),

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: AssignedClassesSection(model: model),
                      ),

                      const SizedBox(height: 22),

                      // Floating card
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.05),
                              blurRadius: 12,
                              offset: const Offset(0, 3),
                            )
                          ],
                        ),
                        child: const MainMenuSection(),
                      ),
                    ],
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
