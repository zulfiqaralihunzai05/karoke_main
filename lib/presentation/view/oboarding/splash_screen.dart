import 'dart:async';

import 'package:flutter/material.dart';
import 'package:karoke_main/presentation/view/login/screens/login_screen.dart';
import 'package:karoke_main/utils/gradient/app_helper_widget.dart';
import 'package:karoke_main/utils/strings/app_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>LoginScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppHelperWidgets.bgGradient),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(AppAssets.appLogo, height: 300, width: 300,),
            ),
          ],
        ),
      ),
    );
  }
}
