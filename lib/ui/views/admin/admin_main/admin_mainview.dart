import 'package:flutter/material.dart';
import 'package:schoolmngmtapp/ui/views/admin/admin_main/admin_dashboard/admin_dashview.dart';
import 'package:schoolmngmtapp/ui/views/admin/admin_main/admin_mainviewmodel.dart';
import 'package:stacked/stacked.dart';

class AdminMainview extends StatelessWidget {
  const AdminMainview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => AdminMainviewmodel(),
      builder: (
        BuildContext context,
        AdminMainviewmodel model,
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
              AdminDashview(),
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
                label: 'Attendance',
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
