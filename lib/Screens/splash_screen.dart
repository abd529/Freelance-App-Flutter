// prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:be_pass/Widgets/bottom_nav.dart';
import 'package:be_pass/app_Colors.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
      body: AnimatedSplashScreen(
        splash: SizedBox(
            height: 250,
            width: 250,
            child: SvgPicture.asset("assets/splash-img.svg",
                color: AppColors.gradientGreen)),
        nextScreen: BottomBar(),
        duration: 3000,
        splashIconSize: 1000,
        backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
        splashTransition: SplashTransition.fadeTransition,
        centered: true,
      ),
    );
  }
}
