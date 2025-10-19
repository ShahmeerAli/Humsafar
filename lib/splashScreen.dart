import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:travelmate/main.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>SplashState();


}

class SplashState extends State<SplashScreen>{


 @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 4), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyApp()));

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
