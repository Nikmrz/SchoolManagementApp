import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:schoolmngmtapp/ui/views/admin/admin_main/admin_dashboard/admin_dashview.dart';
import 'package:schoolmngmtapp/ui/views/admin/admin_main/admin_mainviewmodel.dart';
import 'package:schoolmngmtapp/ui/views/admin/admin_main/admin_notice/admin_noticeview.dart';
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
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: AppBar(
              systemOverlayStyle: SystemUiOverlayStyle.light,
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              elevation: 0,
              leadingWidth: 200,
              leading: Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 12),
                child:
                    Text('Bhadra 20, Tuesday', style: TextStyle(fontSize: 14)),
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
          ),
          body: IndexedStack(
            index: model.currentIndex,
            children: const [
              AdminDashview(),
              AdminNoticeView(),
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
                label: 'Notice',
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
