import 'package:flutter/material.dart';
import 'package:schoolmngmtapp/ui/views/admin/admin_main/admin_dashboard/admin_dashviewmodel.dart';
import 'package:schoolmngmtapp/ui/views/admin/admin_main/admin_dashboard/widgets/activity_feed_tile.dart';
import 'package:schoolmngmtapp/ui/views/admin/admin_main/admin_dashboard/widgets/main_menu_tile.dart';
import 'package:schoolmngmtapp/ui/views/admin/admin_main/admin_dashboard/widgets/summary_tile.dart';
import 'package:stacked/stacked.dart';

class AdminDashview extends StatelessWidget {
  const AdminDashview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => AdminDashviewModel(),
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: Colors.grey[50],
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                const Text(
                  "Overview",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 12),
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    SummaryCard(
                      title: "Teachers",
                      count: model.totalTeachers.toString(),
                      icon: Icons.school,
                      color: const Color.fromARGB(255, 101, 142, 239),
                    ),
                    SummaryCard(
                      title: "Parents",
                      count: model.totalParents.toString(),
                      icon: Icons.people,
                      color: const Color.fromARGB(255, 99, 242, 120),
                    ),
                    SummaryCard(
                      title: "Students",
                      count: model.totalStudents.toString(),
                      icon: Icons.person,
                      color: const Color.fromARGB(255, 246, 215, 104),
                    ),
                    SummaryCard(
                      title: "Classes",
                      count: model.totalClasses.toString(),
                      icon: Icons.class_,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        blurRadius: 5,
                        offset: const Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Main Menu",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 12),
                      GridView.count(
                        crossAxisCount: 3,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        children: [
                          MainMenuTile(
                            icon: Icons.school,
                            label: "Teachers",
                            onTap: () => model.navigateToSection("Teachers"),
                          ),
                          MainMenuTile(
                            icon: Icons.people,
                            label: "Parents",
                            onTap: () => model.navigateToSection("Parents"),
                          ),
                          MainMenuTile(
                            icon: Icons.person,
                            label: "Students",
                            onTap: () => model.navigateToSection("Students"),
                          ),
                          MainMenuTile(
                            icon: Icons.class_,
                            label: "Classes",
                            onTap: () => model.navigateToSection("Classes"),
                          ),
                          MainMenuTile(
                            icon: Icons.payments,
                            label: "Fees",
                            onTap: () => model.navigateToSection("Fees"),
                          ),
                          MainMenuTile(
                            icon: Icons.announcement,
                            label: "Notices",
                            onTap: () => model.navigateToSection("Notices"),
                          ),
                          MainMenuTile(
                            icon: Icons.event,
                            label: "Events",
                            onTap: () => model.navigateToSection("Events"),
                          ),
                          MainMenuTile(
                            icon: Icons.report,
                            label: "Complaints",
                            onTap: () => model.navigateToSection("Complaints"),
                          ),
                          MainMenuTile(
                            icon: Icons.directions_bus,
                            label: "Transport",
                            onTap: () => model.navigateToSection("Transport"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  "Recent Activities",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                Column(
                  children: model.recentActivities
                      .map(
                        (activity) => ActivityFeedTile(
                          title: activity['title']!,
                          time: activity['time']!,
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
