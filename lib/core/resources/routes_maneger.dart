import 'package:drosak/view/explore/explore_screen/explore_screen.dart';
import 'package:drosak/view/group_page/group_screen/group_screen.dart';
import 'package:drosak/view/splash_screen/splash_screen_page/splash_screen.dart';
import 'package:flutter/material.dart';

import '../../view/attendance_screen/attendance_screen/attendance_screen.dart';
import '../../view/audience_screen/audience_screen/audience_screen.dart';
import '../../view/educational_stages/educational_stages_screen/educational_stages_screen.dart';
import '../../view/on_boarding_screen/on_boarding_screen_page/on_boarding_screen.dart';
import '../../view/student_page/student_screen/student_screen.dart';
import '../not_found_page/not_found_page.dart';

Route<dynamic>? onGenerate(RouteSettings settings) {
  Widget page;

  switch (settings.name) {
    case RoutesNames.main:
      page = const SplashScreen();
    case RoutesNames.onboard:
      page = const OnboardingScreenPage();
    case RoutesNames.explore:
      page = const ExploreScreen();
    case RoutesNames.educationalStages:
      page = const EducationalStagesScreen();
  case RoutesNames.groups:
      page = const GroupScreen();
      case RoutesNames.students:
      page = const StudentScreen();
      case RoutesNames.audience:
      page = const AudienceScreen();
      case RoutesNames.attendance:
      page = const AttendanceScreen();

    default:
      page = const NotFoundPage();
  }
  return MaterialPageRoute(builder: (context) => page, settings: settings);
}

class RoutesNames {
  RoutesNames._();

  static const String main = "/";
  static const String onboard = "/onboard";
  static const String explore = "/explore";
  static const String educationalStages = "/educationalStages";
  static const String groups = "/groups";
  static const String students = "/students";
  static const String attendance = "/attendance";
  static const String audience = "/audience";
}
