import 'package:schoolmngmtapp/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:schoolmngmtapp/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:schoolmngmtapp/ui/views/admin/admin_login/admin_loginview.dart';
import 'package:schoolmngmtapp/ui/views/admin/admin_main/admin_dashboard/admin_dashview.dart';
import 'package:schoolmngmtapp/ui/views/admin/admin_main/admin_mainview.dart';
import 'package:schoolmngmtapp/ui/views/admin/admin_main/admin_notice/admin_noticeview.dart';
import 'package:schoolmngmtapp/ui/views/home/home_view.dart';
import 'package:schoolmngmtapp/ui/views/onboarding/onboarding_view.dart';
import 'package:schoolmngmtapp/ui/views/parent/otp/otp_view.dart';
import 'package:schoolmngmtapp/ui/views/parent/parent_loginview.dart';
import 'package:schoolmngmtapp/ui/views/parent/parent_regview.dart';
import 'package:schoolmngmtapp/ui/views/parent/parentmain/childassignment/childassignmentview.dart';
import 'package:schoolmngmtapp/ui/views/parent/parentmain/dashboard/dashboard_view.dart';
import 'package:schoolmngmtapp/ui/views/parent/parentmain/notice/notice_view.dart';
import 'package:schoolmngmtapp/ui/views/parent/parentmain/parent_mainview.dart';
import 'package:schoolmngmtapp/ui/views/parent/parentmain/parent_profile/parent_profileview.dart';
import 'package:schoolmngmtapp/ui/views/parent/useragreement/useragreementview.dart';
import 'package:schoolmngmtapp/ui/views/role_selection/role_selectionview.dart';
import 'package:schoolmngmtapp/ui/views/startup/startup_view.dart';
import 'package:schoolmngmtapp/ui/views/teacher/teacher_loginview.dart';
import 'package:schoolmngmtapp/ui/views/teacher/teacher_mainview/teacher_assignment/teacher_assignment_view.dart';
import 'package:schoolmngmtapp/ui/views/teacher/teacher_mainview/teacher_attendence/teacherattendview.dart';
import 'package:schoolmngmtapp/ui/views/teacher/teacher_mainview/teacher_dashboard/teacherdashboardview.dart';
import 'package:schoolmngmtapp/ui/views/teacher/teacher_mainview/teacher_profile/teacher_profileview.dart';
import 'package:schoolmngmtapp/ui/views/teacher/teacher_mainview/teacher_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: OnboardingView, initial: true),
    MaterialRoute(page: RoleSelectionView),
    MaterialRoute(page: AdminLoginview),
    MaterialRoute(page: TeacherLoginview),
    MaterialRoute(page: ParentLoginview),
    MaterialRoute(page: ParentRegView),
    MaterialRoute(page: UserAgreementView),
    MaterialRoute(page: ParentOtpView),
    MaterialRoute(page: ParentMainview),
    MaterialRoute(page: DashboardView),
    MaterialRoute(page: TeacherDashboardView),
    MaterialRoute(page: TeacherMainView),
    MaterialRoute(page: ParentProfileView),
    MaterialRoute(page: AdminDashview),
    MaterialRoute(page: AdminMainview),
    MaterialRoute(page: Teacherattendview),
    MaterialRoute(page: Childassignmentview),
    MaterialRoute(page: NoticeView),
    MaterialRoute(page: TeacherProfileView),
    MaterialRoute(page: TeacherAssignmentView),
    MaterialRoute(page: AdminNoticeView),
    // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
