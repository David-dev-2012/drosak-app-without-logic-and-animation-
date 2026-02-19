import 'package:flutter/material.dart';
import '../resources/font_size.dart';
import '../resources/fonts_family.dart';
import '../resources/icons_size.dart';

class NavBarIcons extends StatelessWidget {
  const NavBarIcons({
    super.key,
    required this.iconText,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  final String iconText;
  final IconData icon;
  final Color color;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Icon(icon, color: color, size: IconSizeManager.s25),
          Text(
            iconText,
            style: TextStyle(
              color: color,
              fontSize: FontSize.f12,
              fontFamily: FontsFamily.ge,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
