import 'package:drosak/core/resources/colors.dart';
import 'package:drosak/core/resources/font_size.dart';
import 'package:drosak/core/resources/fonts_family.dart';
import 'package:drosak/core/resources/height.dart';
import 'package:drosak/core/resources/images_maneger.dart';
import 'package:drosak/core/resources/routes_maneger.dart';
import 'package:drosak/core/resources/width.dart';
import 'package:flutter/material.dart';
import '../explore_widgets/explore_app_titles.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.lightBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: WidthManager.w15),
              child: Text(
                "استكشف التطبيق",
                style: TextStyle(
                  fontFamily: FontsFamily.ge,
                  fontSize: FontSize.f20,
                  color: ColorsManager.burble,
                ),
                textDirection: TextDirection.rtl,
              ),
            ),
            SizedBox(height: HeightManager.h25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: WidthManager.w30),
              child: Column(
                spacing: HeightManager.h35,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ExploreApp(
                        image: SVGImagesManager.room,
                        text: "المراحل التعليمية",
                        routeName: RoutesNames.educationalStages,
                      ),
                      ExploreApp(
                        image: SVGImagesManager.matter,
                        text: "المجموعات",
                        routeName: RoutesNames.groups,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ExploreApp(
                        image: SVGImagesManager.book,
                        text: "الطلاب",
                        routeName: RoutesNames.students,
                      ),
                      ExploreApp(
                        image: SVGImagesManager.message,
                        text: "الحضور",
                        routeName: RoutesNames.audience,
                      ),
                    ],
                  ),
                  ExploreApp(
                    image: SVGImagesManager.bitcoin,
                    text: "الدفع",
                    routeName: RoutesNames.attendance,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
