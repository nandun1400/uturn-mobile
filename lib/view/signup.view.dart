import 'package:flutter/material.dart';
import 'package:uturn/utils/global.colors.dart';
import 'package:uturn/view/widgets/button.global.dart';
import 'package:uturn/view/widgets/social.login.dart';
import 'package:uturn/view/widgets/text.form.global.dart';

class SignupView extends StatelessWidget {
  SignupView({Key? key});

  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
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
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Text(
                  "Create an account",
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 15),
                TextFormGlobal(
                  controller: firstnameController,
                  text: 'First Name',
                  textInputType: TextInputType.text,
                  obscure: false,
                ),
                const SizedBox(height: 15),
                TextFormGlobal(
                  controller: lastnameController,
                  text: 'Last Name',
                  textInputType: TextInputType.text,
                  obscure: false,
                ),
                const SizedBox(height: 10),
                TextFormGlobal(
                  controller: emailController,
                  text: 'Email',
                  textInputType: TextInputType.emailAddress,
                  obscure: false,
                ),
                const SizedBox(height: 10),
                TextFormGlobal(
                  controller: passwordController,
                  text: 'Password',
                  textInputType: TextInputType.text,
                  obscure: true,
                ),
                const SizedBox(height: 10),
                ButtonGlobal(
                  text: 'Sign Up',
                  onTap: () {
                    // Handle signup logic here
                  },
                ),
                const SizedBox(height: 10),
                SocialLogin(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
