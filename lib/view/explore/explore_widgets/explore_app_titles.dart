import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/resources/app_navigation_manager.dart';
import '../../../core/resources/colors.dart';
import '../../../core/resources/font_size.dart';
import '../../../core/resources/fonts_family.dart';
import '../../../core/resources/height.dart';
import '../../../core/resources/radius.dart';
import '../../../core/resources/width.dart';

class ExploreApp extends StatelessWidget {
  const ExploreApp({
    super.key, required this.image, required this.text, required this.routeName,
  });
  final String image;
  final String text;
  final String routeName;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          color: ColorsManager.lightBlack,
          borderRadius: BorderRadius.circular(
            BorderRadiusManager.r15,
          ),
          boxShadow: [
            BoxShadow(
              color: ColorsManager.burble,
              blurRadius: BorderRadiusManager.r20,
              blurStyle: BlurStyle.outer,
              spreadRadius: 1,
            ),
          ],
          border: Border.all(
            color: ColorsManager.burble,
            strokeAlign: 1,
            style: BorderStyle.solid,
          ),
        ),
        height: HeightManager.h105,
        width: WidthManager.w130,
        padding: EdgeInsets.symmetric(
          vertical: HeightManager.h5,
          horizontal: WidthManager.w5,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  BorderRadiusManager.r15,
                ),
                color: ColorsManager.burble,
              ),
              height: HeightManager.h25,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                text,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: ColorsManager.white,
                  fontSize: FontSize.f15,
                  fontFamily: FontsFamily.ge,
                ),
              ),
            ),
            SvgPicture.asset(
              image,
              height: HeightManager.h65,
              width: WidthManager.w100,
            ),
          ],
        ),
      ),
      onTap: () => AppNavigation.pushNamed(routeName, context),
    );
  }
}
