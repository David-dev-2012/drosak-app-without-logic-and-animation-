import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:drosak/core/resources/app_navigation_manager.dart';
import 'package:drosak/core/resources/colors.dart';
import 'package:drosak/core/resources/font_size.dart';
import 'package:drosak/core/resources/fonts_family.dart';
import 'package:drosak/core/resources/height.dart';
import 'package:drosak/core/resources/routes_maneger.dart';
import 'package:drosak/core/resources/utils.dart';
import 'package:drosak/core/resources/width.dart';

class OnboardingScreenPage extends StatefulWidget {
  const OnboardingScreenPage({super.key});

  @override
  State<OnboardingScreenPage> createState() => _OnboardingScreenPageState();
}

class _OnboardingScreenPageState extends State<OnboardingScreenPage> {

  final PageController _controller = PageController();

  final StreamController<int> _pageStreamController =
      StreamController<int>.broadcast();

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageStreamController.add(0);
  }

  void _nextPage() {
    if (_currentPage < Utils.onBoardingModelList.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      AppNavigation.pushReplacementNamed(RoutesNames.explore, context);
    }
  }

  void _skip() {
    AppNavigation.pushReplacementNamed(RoutesNames.explore, context);
  }

  @override

  void dispose() {
    _pageStreamController.close();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: Utils.onBoardingModelList.length,
                onPageChanged: (index) {
                  _currentPage = index;
                  _pageStreamController.add(index);
                },
                itemBuilder: (context, index) {
                  final item = Utils.onBoardingModelList[index];

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(item.image),
                      const SizedBox(height: 30),
                      Text(
                        item.title,
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: FontsFamily.aa,
                          fontSize: FontSize.f20,
                          color: ColorsManager.black,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: WidthManager.w10),
        height: HeightManager.h50,
        color: ColorsManager.burble,
        child: StreamBuilder<int>(
          stream: _pageStreamController.stream,
          builder: (context, snapshot) {
            int current = snapshot.data ?? 0;

            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textDirection: TextDirection.rtl,
              children: [
                /// NEXT
                TextButton(
                  onPressed: _nextPage,
                  child: Text(
                    current == Utils.onBoardingModelList.length - 1
                        ? "ابدأ"
                        : "التالي",
                    style: TextStyle(
                      color: ColorsManager.white,
                      fontSize: FontSize.f15,
                      fontFamily: FontsFamily.ge,
                    ),
                  ),
                ),

                /// DOTS
                Row(
                  children: List.generate(Utils.onBoardingModelList.length, (
                    index,
                  ) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      height: HeightManager.h10,
                      width: current == index
                          ? WidthManager.w20
                          : WidthManager.w10,
                      decoration: BoxDecoration(
                        color: ColorsManager.white.withValues(
                          alpha: current == index ? 1 : 0.3,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    );
                  }),
                ),

                /// SKIP
                TextButton(
                  onPressed: _skip,
                  child: Text(
                    "تخطي",
                    style: TextStyle(
                      color: ColorsManager.white,
                      fontSize: FontSize.f15,
                      fontFamily: FontsFamily.ge,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
