import 'package:flutter/material.dart';
import 'package:schoolmngmtapp/ui/views/parent/parentmain/childassignment/childassignmentview.dart';
import 'package:schoolmngmtapp/ui/views/parent/parentmain/dashboard/dashboard_view.dart';
import 'package:schoolmngmtapp/ui/views/parent/parentmain/notice/notice_view.dart';
import 'package:schoolmngmtapp/ui/views/parent/parentmain/parent_mainviewmodel.dart';
import 'package:schoolmngmtapp/ui/views/parent/parentmain/parent_profile/parent_profileview.dart';
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
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            elevation: 1,
            leadingWidth: 200,
            leading: Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 12),
              child: Text('Bhadra 20, Tuesday', style: TextStyle(fontSize: 14)),
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
              NoticeView(),
              ParentProfileView(),
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
                label: 'Notice',
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
