import 'package:drosak/core/resources/images_maneger.dart';
import 'package:flutter/material.dart';

import '../resources/colors.dart';
import '../resources/font_size.dart';
import '../resources/fonts_family.dart';
import '../resources/height.dart';
import '../resources/radius.dart';
import '../resources/width.dart';
import 'custom_time_table.dart';

class CustomNoteTimetableForStudents extends StatelessWidget {
  const CustomNoteTimetableForStudents({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: WidthManager.w17),
      child: Container(
        decoration: BoxDecoration(
          color: ColorsManager.lightBlack,
          border: Border.all(color: ColorsManager.burble, strokeAlign: 1),
          borderRadius: BorderRadius.circular(BorderRadiusManager.r18),
        ),
        width: double.infinity,
        height: HeightManager.h175,
        padding: EdgeInsets.only(
          bottom: HeightManager.h15,
          top: HeightManager.h5,
          right: WidthManager.w25,
          left: WidthManager.w10,
        ),
        child: Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              spacing: HeightManager.h10,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "أحمد السيد عبد المعطي السيد",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: FontSize.f12,
                    fontFamily: FontsFamily.ge,
                  ),
                ),
                Text(
                  "الصف الاول الاعدادي /   المجموعة الأولي",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: FontSize.f10,
                    fontFamily: FontsFamily.ge,
                  ),
                ),
                CustomTimeTable(),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(
                BorderRadiusManager.r50,
              ),
              child: Image.asset(
                SVGImagesManager.student,
                fit: BoxFit.cover,
                height: HeightManager.h65,
                width: WidthManager.w65,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
