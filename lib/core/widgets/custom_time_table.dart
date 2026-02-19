import 'package:flutter/material.dart';

import '../resources/colors.dart';
import '../resources/font_size.dart';
import '../resources/fonts_family.dart';
import '../resources/height.dart';
import '../resources/radius.dart';
import '../resources/width.dart';

class CustomTimeTable extends StatelessWidget {
  const CustomTimeTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: WidthManager.w200,
      height: HeightManager.h90,
      decoration: BoxDecoration(
        color: ColorsManager.lightBlack,
        borderRadius: BorderRadius.circular(BorderRadiusManager.r18),
        border: Border.all(color: ColorsManager.white),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(BorderRadiusManager.r18),
        child: Table(
          border: const TableBorder(
            verticalInside: BorderSide(color: Colors.white, width: 1),
            horizontalInside: BorderSide(color: Colors.white, width: 1),
          ),
          columnWidths: const {
            0: FlexColumnWidth(),
            1: FlexColumnWidth(),
            2: FlexColumnWidth(),
            3: FlexColumnWidth(),
          },
          children: [

            /// الصف الأول (العناوين)
            TableRow(
              children: [
                Container(
                  height: HeightManager.h40,
                  alignment: Alignment.center,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "م/ص",
                    style: TextStyle(
                      color: ColorsManager.burble,
                      fontFamily: FontsFamily.ge,
                      fontSize: FontSize.f15,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "الوقت",
                    style: TextStyle(
                      color: ColorsManager.burble,
                      fontFamily: FontsFamily.ge,
                      fontSize: FontSize.f15,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "اليوم",
                    style: TextStyle(
                      color: ColorsManager.burble,
                      fontFamily: FontsFamily.ge,
                      fontSize: FontSize.f15,
                    ),
                  ),
                ),
              ],
            ),

            /// الصف الثاني (البيانات)
            TableRow(
              children: [
                Container(
                  height: HeightManager.h60,
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.delete_outline,
                    color: ColorsManager.burble,
                    size: 22,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "م",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: FontsFamily.ge,
                      fontSize: FontSize.f15,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "10:30",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: FontsFamily.ge,
                      fontSize: FontSize.f15,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "السبت",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: FontsFamily.ge,
                      fontSize: FontSize.f15,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
