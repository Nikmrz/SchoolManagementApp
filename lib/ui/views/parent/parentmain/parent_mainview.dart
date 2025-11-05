import 'package:flutter/material.dart';
import 'package:schoolmngmtapp/ui/views/parent/parentmain/childassignment/childassignmentview.dart';
import 'package:schoolmngmtapp/ui/views/parent/parentmain/dashboard/dashboard_view.dart';
import 'package:schoolmngmtapp/ui/views/parent/parentmain/parent_mainviewmodel.dart';
import 'package:stacked/stacked.dart';

class ParentMainview extends StatelessWidget {
  const ParentMainview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ParentMainviewModel(),
      builder: (
        BuildContext context,
        ParentMainviewModel model,
        Widget? child,
      ) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 1,
            leading: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Ashoj 20, Tuesday",
                style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.notifications, color: Colors.green),
                onPressed: model.onNotificationPressed,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: GestureDetector(
                  onTap: model.onProfilePressed,
                  child: const CircleAvatar(
                    radius: 18,
                    backgroundImage:
                        NetworkImage('https://i.pravatar.cc/150?img=10'),
                  ),
                ),
              ),
            ],
          ),
          body: IndexedStack(
            index: model.currentIndex,
            children: const [
              DashboardView(),
              Childassignmentview(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: model.currentIndex,
            onTap: model.setIndex,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                label: 'Dashboard',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month),
                label: 'Assignment',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.payment),
                label: 'Fees',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }
}
