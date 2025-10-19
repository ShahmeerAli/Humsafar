import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:travelmate/main.dart';

import 'DashboardScreen.dart';
import 'onboardingview.dart';

class SplashScreen extends StatefulWidget{
  final bool onboarding;
  SplashScreen({super.key,required this.onboarding});

  @override
  State<StatefulWidget> createState()=>SplashState();


}

class SplashState extends State<SplashScreen>{


 @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 5), (){
      if (widget.onboarding) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => DashBoard()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Onboarding()));
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child:Lottie.asset("assets/raw/splash.json") ,
      ),
    );
  }

}
