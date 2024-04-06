import "dart:async";
import "package:flutter_svg/flutter_svg.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:uturn/utils/global.colors.dart";
import "package:uturn/view/login.view.dart";

class SplashView extends StatelessWidget {
  const SplashView({Key? key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Get.to(LoginView());
    });
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo
            SvgPicture.asset(
              'assets/images/logo.svg',
              height: 100,
            ),
            const SizedBox(height: 20), //space between logo and text
            // Text and slogan
            const Column(
              children: [
                Text(
                  "U TURN",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10), //space between text and slogan
                Text(
                  "Turning heads, turning journeys",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
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
