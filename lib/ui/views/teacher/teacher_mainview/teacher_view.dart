import 'package:flutter/material.dart';
import 'package:schoolmngmtapp/ui/views/teacher/teacher_mainview/teacher_attendence/teacherattendview.dart';
import 'package:schoolmngmtapp/ui/views/teacher/teacher_mainview/teacher_dashboard/teacherdashboardview.dart';
import 'package:schoolmngmtapp/ui/views/teacher/teacher_mainview/teacher_viewmodel.dart';
import 'package:stacked/stacked.dart';

class TeacherMainView extends StatelessWidget {
  const TeacherMainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => TeacherMainViewModel(),
      builder: (
        BuildContext context,
        TeacherMainViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          appBar: AppBar(
            leadingWidth: 200,
            leading: Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 12),
              child: Text('Bhadra 20, Tuesday', style: TextStyle(fontSize: 14)),
            ),
            actions: [
              IconButton(
                  onPressed: model.onNotificationPressed,
                  icon: const Icon(
                    Icons.notifications,
                    color: Colors.green,
                  )),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: GestureDetector(
                  onTap: model.onProfileClicked,
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.blue,
                  ),
                ),
              )
            ],
          ),
          body: IndexedStack(
            index: model.currentIndex,
            children: const [
              TeacherDashboardView(),
              Teacherattendview(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: model.currentIndex,
            onTap: model.setIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard), label: 'Dashboard'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_2), label: 'Attendance'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.assignment), label: 'Assignment'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile')
            ],
          ),
        );
      },
    );
  }
}
