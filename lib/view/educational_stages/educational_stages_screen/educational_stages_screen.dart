import 'package:drosak/core/resources/colors.dart';
import 'package:drosak/core/resources/height.dart';
import 'package:drosak/core/resources/icons_size.dart';
import 'package:drosak/core/resources/images_maneger.dart';
import 'package:drosak/core/resources/radius.dart';
import 'package:drosak/core/resources/width.dart';
import 'package:drosak/core/widgets/navigator_bar.dart';
import 'package:flutter/material.dart';
import '../../../core/resources/font_size.dart';
import '../../../core/resources/fonts_family.dart';

class EducationalStagesScreen extends StatelessWidget {
  const EducationalStagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.lightBlack,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          spacing: HeightManager.h20,
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              height: HeightManager.h80,
              color: ColorsManager.burble,
              padding: EdgeInsets.symmetric(
                horizontal: HeightManager.h15,
                vertical: HeightManager.h30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                        size: IconSizeManager.s25,
                      ),
                      Icon(
                        Icons.add_circle_outline_rounded,
                        color: Colors.white,
                        size: IconSizeManager.s25,
                      ),
                    ],
                  ),
                  Text(
                    'المراحل التعليمية',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: FontsFamily.ge,
                      fontSize: FontSize.f15,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: WidthManager.w17),
              child: Container(
                decoration: BoxDecoration(
                  color: ColorsManager.lightBlack,
                  border: Border.all(
                    color: ColorsManager.burble,
                    strokeAlign: 1,
                  ),
                  borderRadius: BorderRadius.circular(BorderRadiusManager.r18),
                ),
                width: double.infinity,
                height: HeightManager.h105,
                padding: EdgeInsets.only(
                  bottom: HeightManager.h15,
                  top: HeightManager.h5,
                  right: WidthManager.w25,
                  left: WidthManager.w10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(
                        BorderRadiusManager.r50,
                      ),
                      child: Image.asset(
                        SVGImagesManager.student,
                        height: HeightManager.h65,
                        width: WidthManager.w65,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      spacing: HeightManager.h5,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "الصف الأول الإعدادي",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: FontSize.f20,
                            fontFamily: FontsFamily.ge,
                          ),
                        ),
                        Text(
                          "تلك الصف هو الصف الاعدادي وفي ثلاث طلاب مثلاتلك \nالصف و الصف الاعدادي وفي ثلاث طلاب مثلاتلك الصف",
                          style: TextStyle(
                            fontFamily: FontsFamily.ge,
                            fontSize: FontSize.f10,
                            color: ColorsManager.grey,
                          ),
                          textDirection: TextDirection.rtl,
                          maxLines: 2,
                          softWrap: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: WidthManager.w17),
              child: Container(
                decoration: BoxDecoration(
                  color: ColorsManager.lightBlack,
                  border: Border.all(
                    color: ColorsManager.burble,
                    strokeAlign: 1,
                  ),
                  borderRadius: BorderRadius.circular(BorderRadiusManager.r18),
                ),
                width: double.infinity,
                height: HeightManager.h105,
                padding: EdgeInsets.only(
                  bottom: HeightManager.h15,
                  top: HeightManager.h5,
                  right: WidthManager.w25,
                  left: WidthManager.w10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(
                        BorderRadiusManager.r50,
                      ),
                      child: Image.asset(
                        SVGImagesManager.student,
                        height: HeightManager.h65,
                        width: WidthManager.w65,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      spacing: HeightManager.h5,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "الصف الأول الإعدادي",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: FontSize.f20,
                            fontFamily: FontsFamily.ge,
                          ),
                        ),
                        Text(
                          "تلك الصف هو الصف الاعدادي وفي ثلاث طلاب مثلاتلك \nالصف و الصف الاعدادي وفي ثلاث طلاب مثلاتلك الصف",
                          style: TextStyle(
                            fontFamily: FontsFamily.ge,
                            fontSize: FontSize.f10,
                            color: ColorsManager.grey,
                          ),
                          textDirection: TextDirection.rtl,
                          maxLines: 2,
                          softWrap: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
bottomNavigationBar:NavBar() ,
    );
  }
}


