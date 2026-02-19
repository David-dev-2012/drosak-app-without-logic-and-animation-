import 'package:drosak/core/widgets/custom_note_timetable_for_students.dart';
import 'package:drosak/core/widgets/navigator_bar.dart';
import 'package:flutter/material.dart';
import '../../../core/resources/colors.dart';
import '../../../core/resources/font_size.dart';
import '../../../core/resources/fonts_family.dart';
import '../../../core/resources/height.dart';
import '../../../core/resources/icons_size.dart';

class StudentScreen extends StatelessWidget {
  const StudentScreen({super.key});

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
                    'الطلاب',
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
            CustomNoteTimetableForStudents(),
            CustomNoteTimetableForStudents(),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}

