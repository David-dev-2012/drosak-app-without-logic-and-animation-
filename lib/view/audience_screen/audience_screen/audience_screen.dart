import 'package:drosak/core/resources/images_maneger.dart';
import 'package:drosak/core/resources/radius.dart';
import 'package:drosak/core/resources/width.dart';
import 'package:drosak/core/widgets/navigator_bar.dart';
import 'package:flutter/material.dart';
import '../../../core/resources/colors.dart';
import '../../../core/resources/font_size.dart';
import '../../../core/resources/fonts_family.dart';
import '../../../core/resources/height.dart';
import '../../../core/resources/icons_size.dart';
import '../audience_widget/custom_audience.dart';

class AudienceScreen extends StatelessWidget {
  const AudienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.lightBlack,
      body: SingleChildScrollView(
        child: SizedBox(
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
                      'الحضور',
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
                child: Column(
                  spacing: HeightManager.h20,
                  children: [
                    CustomAudience(text: "المرحلة التعليمية"),
                    CustomAudience(text: "المجموعة"),
                    SizedBox(height: HeightManager.h20),
                    SizedBox(
                      width: double.infinity,
                      height: HeightManager.h400,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(
                          horizontal: WidthManager.w20,
                        ),
                        itemCount: 4,
                        // عدد الكروت
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // 2 في الصف
                          crossAxisSpacing: WidthManager.w20,
                          mainAxisSpacing: HeightManager.h20,
                          childAspectRatio: 1.2, // علشان الشكل يطلع شبه الصورة
                        ),
                        itemBuilder: (context, index) {
                          return CustomCard();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: HeightManager.h120,
      width: WidthManager.w160,
      decoration: BoxDecoration(
        color: ColorsManager.lightBlack,
        borderRadius: BorderRadiusGeometry.circular(BorderRadiusManager.r18),
        border: Border.all(width: 2, color: ColorsManager.burble),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: HeightManager.h10,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(
              BorderRadiusManager.r50,
            ),
            child: Image.asset(
              SVGImagesManager.student,
              height: HeightManager.h60,
              width: WidthManager.w60,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "أحمد السيد عبد المعطي",
            textDirection: TextDirection.rtl,
            style: TextStyle(
              color: Colors.white,
              fontSize: FontSize.f12,
              fontFamily: FontsFamily.ge,
            ),
          ),
        ],
      ),
    );
  }
}
