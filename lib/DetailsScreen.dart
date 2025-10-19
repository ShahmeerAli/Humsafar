import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>DetailsState();

}

class DetailsState extends State<DetailsScreen>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Container(
        child: Center(child: Text("Details Go here")),
      ),
   );
  }


}