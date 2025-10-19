import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelmate/ChatScreen.dart';
import 'package:travelmate/DashboardScreen.dart';
import 'package:travelmate/MatchScreen.dart';
import 'package:travelmate/ProfileScreen.dart';

class BottomBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>BottomState();


}

class BottomState extends State<BottomBar>{
  int currentIndex=0;
  final screens=[
    DashBoard(),
    MatchScreen(),
    ChatScreen(),
    ProfileScreen()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(selectedItemColor: Colors.pinkAccent,backgroundColor: Colors.white,
          unselectedItemColor: Color(0xfffccbcb),
          currentIndex: currentIndex,
          onTap: (index){
            setState(() {
              currentIndex=index;

            });
                       },
          items: [
            BottomNavigationBarItem(icon: Image.asset("assets/images/discover.png",color: Colors.black,),label:"Discover"),
            BottomNavigationBarItem(icon: Image.asset("assets/images/match.png"),label: "Match"),
            BottomNavigationBarItem(icon: Image.asset("assets/images/chat.png"),label: "Chat"),
            BottomNavigationBarItem(icon: Image.asset("assets/images/user.png"),label: "Profile")
          ]),
    );
  }

}