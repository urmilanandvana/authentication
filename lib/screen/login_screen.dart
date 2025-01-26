import 'package:authentication/component/button_cmp.dart';
import 'package:authentication/component/color_cmp.dart';
import 'package:authentication/component/text_cmp.dart';
import 'package:flutter/material.dart';

import '../firebase/auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.height * 0.3),
                child: Image.asset(
                  "assets/login.jpg",
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.height * 0.3,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              text(
                value: "Welcome",
                color: colorCmp.black,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 20),
              iconWithText(
                  context: context,
                  title: 'Continue with Facebook',
                  iconPath: 'assets/facebook.png',
                  onTap: () {}),
              const SizedBox(height: 20),
              iconWithText(
                  context: context,
                  title: 'Continue with Google',
                  iconPath: 'assets/google.png',
                  onTap: () async {
                    await auth.signInWithGoogle();
                  }),
              const SizedBox(height: 20),
              iconWithText(
                  context: context,
                  title: 'Continue with Apple',
                  iconPath: 'assets/apple.png',
                  onTap: () {}),
              const SizedBox(height: 20),
              text(
                value: "or",
                color: colorCmp.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(height: 20),
              primaryButton(
                context: context,
                title: 'Sing in with password',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
