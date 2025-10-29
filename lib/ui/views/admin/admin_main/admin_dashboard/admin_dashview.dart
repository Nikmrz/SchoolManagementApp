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
      builder: (
        BuildContext context,
        AdminDashviewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Overview",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
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
                        color: Colors.blue),
                    SummaryCard(
                        title: "Parents",
                        count: model.totalParents.toString(),
                        icon: Icons.people,
                        color: Colors.green),
                    SummaryCard(
                        title: "Students",
                        count: model.totalStudents.toString(),
                        icon: Icons.person,
                        color: Colors.orange),
                    SummaryCard(
                        title: "Classes",
                        count: model.totalClasses.toString(),
                        icon: Icons.class_,
                        color: Colors.purple),
                  ],
                ),
                const SizedBox(height: 24),
                const Text("Main Menu",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
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
                        onTap: () => model.navigateToSection("Teachers")),
                    MainMenuTile(
                        icon: Icons.people,
                        label: "Parents",
                        onTap: () => model.navigateToSection("Parents")),
                    MainMenuTile(
                        icon: Icons.person,
                        label: "Students",
                        onTap: () => model.navigateToSection("Students")),
                    MainMenuTile(
                        icon: Icons.class_,
                        label: "Classes",
                        onTap: () => model.navigateToSection("Classes")),
                    MainMenuTile(
                        icon: Icons.payments,
                        label: "Fees",
                        onTap: () => model.navigateToSection("Fees")),
                    MainMenuTile(
                        icon: Icons.announcement,
                        label: "Notices",
                        onTap: () => model.navigateToSection("Notices")),
                    MainMenuTile(
                        icon: Icons.event,
                        label: "Events",
                        onTap: () => model.navigateToSection("Events")),
                    MainMenuTile(
                        icon: Icons.report,
                        label: "Complaints",
                        onTap: () => model.navigateToSection("Complaints")),
                    MainMenuTile(
                        icon: Icons.directions_bus,
                        label: "Transport",
                        onTap: () => model.navigateToSection("Transport")),
                  ],
                ),
                const SizedBox(height: 24),
                const Text("Recent Activities",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 12),
                Column(
                  children: model.recentActivities.map((activity) {
                    return ActivityFeedTile(
                        title: activity['title']!, time: activity['time']!);
                  }).toList(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
