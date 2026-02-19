import 'package:drosak/core/resources/radius.dart';
import 'package:drosak/core/resources/width.dart';
import 'package:flutter/material.dart';
import '../../../core/resources/colors.dart';
import '../../../core/resources/font_size.dart';
import '../../../core/resources/fonts_family.dart';
import '../../../core/resources/height.dart';
import '../../../core/resources/icons_size.dart';

class CustomAudience extends StatelessWidget {
  const CustomAudience({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          textDirection: TextDirection.rtl,
          style: TextStyle(
            color: ColorsManager.burble,
            fontFamily: FontsFamily.ge,
            fontSize: FontSize.f14,
          ),
        ),
        Container(
          width: WidthManager.w220,
          height: HeightManager.h45,
          padding: EdgeInsets.symmetric(
            horizontal: WidthManager.w20,
          ),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(BorderRadiusManager.r15),
            border: Border.all(
              color: Colors.grey.shade500,
              width: 1,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black,
                size: IconSizeManager.s25,
              ),
              Text(
                "اختر $text",
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: FontSize.f12,
                  fontFamily: FontsFamily.ge,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
