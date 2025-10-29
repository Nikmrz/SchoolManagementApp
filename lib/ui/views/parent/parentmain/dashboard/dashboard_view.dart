import 'package:flutter/material.dart';
import 'package:schoolmngmtapp/ui/views/parent/parentmain/dashboard/dashboard_viewmodel.dart';
import 'package:schoolmngmtapp/ui/views/parent/parentmain/dashboard/widgets/service_view.dart';
import 'package:schoolmngmtapp/ui/views/parent/parentmain/dashboard/widgets/student_infoview.dart';
import 'package:stacked/stacked.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => DashboardViewModel(),
      builder: (context, model, child) {
        return SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Greeting
              const Text(
                "Hello,",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              Text(
                "Mr. Dinesh Rai",
                style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              const SizedBox(height: 20),

              // Connected Students
              const Text(
                "Connected Students",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: model.students.length + 1, // +1 for add button
                  itemBuilder: (context, index) {
                    if (index == model.students.length) {
                      // Add new student button
                      return GestureDetector(
                        onTap: model.onAddStudent,
                        child: Container(
                          width: 100,
                          margin: const EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Center(
                            child:
                                Icon(Icons.add, size: 40, color: Colors.green),
                          ),
                        ),
                      );
                    }
                    final student = model.students[index];
                    return StudentCard(student: student);
                  },
                ),
              ),

              const SizedBox(height: 24),

              // Main Menu
              const Text(
                "Main Menu",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 12),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: model.services.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 3 columns
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  final service = model.services[index];
                  return ServiceTile(
                    icon: service.icon,
                    label: service.label,
                    onTap: () => model.onServiceSelected(service.label),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
