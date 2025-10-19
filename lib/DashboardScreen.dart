
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>DashBoardState();

}

class DashBoardState extends State<DashBoard>{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      decoration: BoxDecoration(
        color: Colors.pinkAccent
      ),
    ),
  );
  }

}