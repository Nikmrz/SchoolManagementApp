// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i21;
import 'package:flutter/material.dart';
import 'package:schoolmngmtapp/ui/views/admin/admin_login/admin_loginview.dart'
    as _i6;
import 'package:schoolmngmtapp/ui/views/admin/admin_main/admin_dashboard/admin_dashview.dart'
    as _i17;
import 'package:schoolmngmtapp/ui/views/admin/admin_main/admin_mainview.dart'
    as _i18;
import 'package:schoolmngmtapp/ui/views/home/home_view.dart' as _i2;
import 'package:schoolmngmtapp/ui/views/onboarding/onboarding_view.dart' as _i4;
import 'package:schoolmngmtapp/ui/views/parent/otp/otp_view.dart' as _i11;
import 'package:schoolmngmtapp/ui/views/parent/parent_loginview.dart' as _i8;
import 'package:schoolmngmtapp/ui/views/parent/parent_regview.dart' as _i9;
import 'package:schoolmngmtapp/ui/views/parent/parentmain/childassignment/childassignmentview.dart'
    as _i20;
import 'package:schoolmngmtapp/ui/views/parent/parentmain/dashboard/dashboard_view.dart'
    as _i13;
import 'package:schoolmngmtapp/ui/views/parent/parentmain/parent_mainview.dart'
    as _i12;
import 'package:schoolmngmtapp/ui/views/parent/parentmain/parent_profile/parent_profileview.dart'
    as _i16;
import 'package:schoolmngmtapp/ui/views/parent/useragreement/useragreementview.dart'
    as _i10;
import 'package:schoolmngmtapp/ui/views/role_selection/role_selectionview.dart'
    as _i5;
import 'package:schoolmngmtapp/ui/views/startup/startup_view.dart' as _i3;
import 'package:schoolmngmtapp/ui/views/teacher/teacher_loginview.dart' as _i7;
import 'package:schoolmngmtapp/ui/views/teacher/teacher_mainview/teacher_attendence/teacherattendview.dart'
    as _i19;
import 'package:schoolmngmtapp/ui/views/teacher/teacher_mainview/teacher_dashboard/teacherdashboardview.dart'
    as _i14;
import 'package:schoolmngmtapp/ui/views/teacher/teacher_mainview/teacher_view.dart'
    as _i15;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i22;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const onboardingView = '/';

  static const roleSelectionView = '/role-selection-view';

  static const adminLoginview = '/admin-loginview';

  static const teacherLoginview = '/teacher-loginview';

  static const parentLoginview = '/parent-loginview';

  static const parentRegView = '/parent-reg-view';

  static const userAgreementView = '/user-agreement-view';

  static const parentOtpView = '/parent-otp-view';

  static const parentMainview = '/parent-mainview';

  static const dashboardView = '/dashboard-view';

  static const teacherDashboardView = '/teacher-dashboard-view';

  static const teacherMainView = '/teacher-main-view';

  static const parentProfileview = '/parent-profileview';

  static const adminDashview = '/admin-dashview';

  static const adminMainview = '/admin-mainview';

  static const teacherattendview = '/Teacherattendview';

  static const childassignmentview = '/Childassignmentview';

  static const all = <String>{
    homeView,
    startupView,
    onboardingView,
    roleSelectionView,
    adminLoginview,
    teacherLoginview,
    parentLoginview,
    parentRegView,
    userAgreementView,
    parentOtpView,
    parentMainview,
    dashboardView,
    teacherDashboardView,
    teacherMainView,
    parentProfileview,
    adminDashview,
    adminMainview,
    teacherattendview,
    childassignmentview,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.onboardingView,
      page: _i4.OnboardingView,
    ),
    _i1.RouteDef(
      Routes.roleSelectionView,
      page: _i5.RoleSelectionView,
    ),
    _i1.RouteDef(
      Routes.adminLoginview,
      page: _i6.AdminLoginview,
    ),
    _i1.RouteDef(
      Routes.teacherLoginview,
      page: _i7.TeacherLoginview,
    ),
    _i1.RouteDef(
      Routes.parentLoginview,
      page: _i8.ParentLoginview,
    ),
    _i1.RouteDef(
      Routes.parentRegView,
      page: _i9.ParentRegView,
    ),
    _i1.RouteDef(
      Routes.userAgreementView,
      page: _i10.UserAgreementView,
    ),
    _i1.RouteDef(
      Routes.parentOtpView,
      page: _i11.ParentOtpView,
    ),
    _i1.RouteDef(
      Routes.parentMainview,
      page: _i12.ParentMainview,
    ),
    _i1.RouteDef(
      Routes.dashboardView,
      page: _i13.DashboardView,
    ),
    _i1.RouteDef(
      Routes.teacherDashboardView,
      page: _i14.TeacherDashboardView,
    ),
    _i1.RouteDef(
      Routes.teacherMainView,
      page: _i15.TeacherMainView,
    ),
    _i1.RouteDef(
      Routes.parentProfileview,
      page: _i16.ParentProfileview,
    ),
    _i1.RouteDef(
      Routes.adminDashview,
      page: _i17.AdminDashview,
    ),
    _i1.RouteDef(
      Routes.adminMainview,
      page: _i18.AdminMainview,
    ),
    _i1.RouteDef(
      Routes.teacherattendview,
      page: _i19.Teacherattendview,
    ),
    _i1.RouteDef(
      Routes.childassignmentview,
      page: _i20.Childassignmentview,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.OnboardingView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.OnboardingView(),
        settings: data,
      );
    },
    _i5.RoleSelectionView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.RoleSelectionView(),
        settings: data,
      );
    },
    _i6.AdminLoginview: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.AdminLoginview(),
        settings: data,
      );
    },
    _i7.TeacherLoginview: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.TeacherLoginview(),
        settings: data,
      );
    },
    _i8.ParentLoginview: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.ParentLoginview(),
        settings: data,
      );
    },
    _i9.ParentRegView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.ParentRegView(),
        settings: data,
      );
    },
    _i10.UserAgreementView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.UserAgreementView(),
        settings: data,
      );
    },
    _i11.ParentOtpView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.ParentOtpView(),
        settings: data,
      );
    },
    _i12.ParentMainview: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.ParentMainview(),
        settings: data,
      );
    },
    _i13.DashboardView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.DashboardView(),
        settings: data,
      );
    },
    _i14.TeacherDashboardView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.TeacherDashboardView(),
        settings: data,
      );
    },
    _i15.TeacherMainView: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i15.TeacherMainView(),
        settings: data,
      );
    },
    _i16.ParentProfileview: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i16.ParentProfileview(),
        settings: data,
      );
    },
    _i17.AdminDashview: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i17.AdminDashview(),
        settings: data,
      );
    },
    _i18.AdminMainview: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i18.AdminMainview(),
        settings: data,
      );
    },
    _i19.Teacherattendview: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i19.Teacherattendview(),
        settings: data,
      );
    },
    _i20.Childassignmentview: (data) {
      return _i21.MaterialPageRoute<dynamic>(
        builder: (context) => const _i20.Childassignmentview(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i22.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOnboardingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.onboardingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRoleSelectionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.roleSelectionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAdminLoginview([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.adminLoginview,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTeacherLoginview([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.teacherLoginview,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToParentLoginview([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.parentLoginview,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToParentRegView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.parentRegView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToUserAgreementView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.userAgreementView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToParentOtpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.parentOtpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToParentMainview([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.parentMainview,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDashboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.dashboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTeacherDashboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.teacherDashboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTeacherMainView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.teacherMainView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToParentProfileview([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.parentProfileview,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAdminDashview([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.adminDashview,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAdminMainview([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.adminMainview,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTeacherattendview([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.teacherattendview,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToChildassignmentview([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.childassignmentview,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOnboardingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.onboardingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRoleSelectionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.roleSelectionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAdminLoginview([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.adminLoginview,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTeacherLoginview([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.teacherLoginview,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithParentLoginview([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.parentLoginview,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithParentRegView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.parentRegView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithUserAgreementView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.userAgreementView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithParentOtpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.parentOtpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithParentMainview([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.parentMainview,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithDashboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.dashboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTeacherDashboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.teacherDashboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTeacherMainView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.teacherMainView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithParentProfileview([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.parentProfileview,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAdminDashview([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.adminDashview,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAdminMainview([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.adminMainview,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTeacherattendview([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.teacherattendview,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithChildassignmentview([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.childassignmentview,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
