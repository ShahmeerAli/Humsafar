import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:travelmate/BottomBar.dart';


import 'DashboardScreen.dart';


class SplashScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState()=>SplashState();


}

class SplashState extends State<SplashScreen>{


 @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 5), (){

        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => BottomBar()));


    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
         height: double.infinity,
         decoration: BoxDecoration(
           color: Color(0xfff5c0c0)
         ),
         child:Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Lottie.asset("assets/raw/splashscreen.json",width: 300,height: 300),
             Text("Halal Touch",style: TextStyle(fontSize: 35,color: Colors.pink),)
           ],
         ) ,
      ),
    );
  }

}
