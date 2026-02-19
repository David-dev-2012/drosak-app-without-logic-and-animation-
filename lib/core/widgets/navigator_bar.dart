import 'package:flutter/material.dart';
import '../resources/app_navigation_manager.dart';
import '../resources/colors.dart';
import '../resources/height.dart';
import '../resources/routes_maneger.dart';
import 'navigator_bar_icon.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key, });


  @override
  Widget build(BuildContext context) {
    String? settings = ModalRoute.of(context)!.settings.name;
    return Container(
      width: double.infinity,
      height: HeightManager.h65,
      color: ColorsManager.darkGrey,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: HeightManager.h10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavBarIcons(
            iconText: "الدفع",
            icon: Icons.account_balance_wallet_rounded,
            color: settings == RoutesNames.attendance
                ? ColorsManager.burble
                : ColorsManager.grey,
            onTap: settings == RoutesNames.attendance
                ? () {}
                : () {
                    AppNavigation.pushReplacementNamed(RoutesNames.attendance, context);
                  },
          ),
          NavBarIcons(
            iconText: "الحضور",
            icon: Icons.add_chart_outlined,
            color: settings == RoutesNames.audience
                ? ColorsManager.burble
                : ColorsManager.grey,
            onTap: settings == RoutesNames.audience
                ? () {}
                : () {
                    AppNavigation.pushReplacementNamed(RoutesNames.audience, context);
                  },
          ),
          NavBarIcons(
            iconText: "الطالب",
            icon: Icons.person,
            color: settings == RoutesNames.students
                ? ColorsManager.burble
                : ColorsManager.grey,
            onTap: settings == RoutesNames.students
                ? () {}
                : () {
                    AppNavigation.pushReplacementNamed(RoutesNames.students, context);
                  },
          ),
          NavBarIcons(
            iconText: "المجموعات",
            icon: Icons.people_alt_rounded,
            color: settings == RoutesNames.groups
                ? ColorsManager.burble
                : ColorsManager.grey,
            onTap: settings == RoutesNames.groups
                ? () {}
                : () {
                    AppNavigation.pushReplacementNamed(RoutesNames.groups, context);
                  },
          ),
          NavBarIcons(
            iconText: "المراحل التعليمية",
            icon: Icons.account_tree_outlined,
            color: settings == RoutesNames.educationalStages
                ? ColorsManager.burble
                : ColorsManager.grey,
            onTap: settings == RoutesNames.educationalStages
                ? () {}
                : () {
                    AppNavigation.pushReplacementNamed(
                      RoutesNames.educationalStages,
                      context,
                    );
                  },
          ),
        ],
      ),
    );
  }
}
