import 'package:drosak/core/resources/app_navigation_manager.dart';
import 'package:drosak/core/resources/colors.dart';
import 'package:drosak/core/resources/images_maneger.dart';
import 'package:drosak/core/resources/routes_maneger.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _startNavigation();
  }

  Future<void> _startNavigation() async {
    await Future.delayed(const Duration(seconds: 2));

    if (!mounted) return;

    AppNavigation.pushReplacementNamed(
      RoutesNames.onboard,
      context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.lightBlack,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(SVGImagesManager.group14386),
            ],
          ),
          Center(
            child: Image.asset(SVGImagesManager.d3),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(SVGImagesManager.group14385),
            ],
          ),
        ],
      ),
    );
  }
}