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
      bottomNavigationBar: BottomNavigationBar(selectedItemColor: Colors.pink,
          backgroundColor: Color(0xfffddcdc),
          unselectedItemColor: Color(0xff0c0c0c),
          currentIndex: currentIndex,
          onTap: (index){
            setState(() {
              currentIndex=index;

            });
                       },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Image.asset("assets/images/discover.png",color: Colors.pink,),label:"Discover"),
            BottomNavigationBarItem(icon: Image.asset("assets/images/match.png",color: Colors.pink,),label: "Match"),
            BottomNavigationBarItem(icon: Image.asset("assets/images/chat.png",color: Colors.pink,),label: "Chat"),
            BottomNavigationBarItem(icon: Image.asset("assets/images/user.png",color: Colors.pink,),label: "Profile")
          ]),
    );
  }

}