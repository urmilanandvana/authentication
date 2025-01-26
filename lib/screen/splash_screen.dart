import 'dart:math';

import 'package:authentication/component/color_cmp.dart';
import 'package:authentication/component/text_cmp.dart';
import 'package:authentication/screen/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState

    Future.delayed(
      Duration(seconds: 4),
      () async {
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/styling_girl.jpg",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: colorCmp.black.withOpacity(0.2),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            right: 0,
            child: RotatedBox(
              quarterTurns: 1,
              child: text(
                value: "Casca",
                color: colorCmp.yellowShade,
                fontSize: 60,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
