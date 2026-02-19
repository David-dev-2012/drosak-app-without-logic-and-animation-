import 'package:flutter/material.dart';

class AppNavigation {
  AppNavigation._();

  static Future<void> pushNamed(String routeName, BuildContext context) async {
    await Navigator.pushNamed(context, routeName);
  }

  static Future<void> pop(BuildContext context) async {
    Navigator.pop(context);
  }

  static Future<void> pushReplacementNamed(
    String routeName,
    BuildContext context,
  ) async {
    await Navigator.pushReplacementNamed(context, routeName);
  }
}
