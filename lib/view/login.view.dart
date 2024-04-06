import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uturn/utils/global.colors.dart';
import 'package:uturn/view/widgets/button.global.dart';
import 'package:uturn/view/widgets/social.login.dart';
import 'package:uturn/view/widgets/text.form.global.dart';
import 'package:uturn/view/signup.view.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "U TURN",
                    style: TextStyle(
                        color: GlobalColors.mainColor,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 50),
                Text(
                  "Login to your account",
                  style: TextStyle(
                      color: GlobalColors.textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 15),
                //// Email Input
                TextFormGlobal(
                  controller: emailController,
                  text: 'Email',
                  textInputType: TextInputType.emailAddress,
                  obscure: false,
                ),
                //// Password Input
                const SizedBox(height: 10),

                TextFormGlobal(
                  controller: passwordController,
                  text: "Password",
                  textInputType: TextInputType.text,
                  obscure: true,
                ),
                const SizedBox(height: 10),
                ButtonGlobal(
                  text: "Sign In",
                  onTap: () {},
                ),
                const SizedBox(height: 10),
                const SocialLogin(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Don't Have an account"),
            GestureDetector(
              onTap: () {
                Get.to(() => SignupView());
              },
              child: Text(
                " Sign Up",
                style: TextStyle(
                    color: GlobalColors.mainColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
