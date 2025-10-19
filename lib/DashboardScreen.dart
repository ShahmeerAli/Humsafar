
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:travelmate/DetailsScreen.dart';


class DashBoard extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>DashBoardState();

}

class DashBoardState extends State<DashBoard>{

  final CardSwiperController _controller = CardSwiperController();

  List<String> profiles=[
    "assets/images/one.png",
     "assets/images/two.jpg",
     "assets/images/one.png",
    "assets/images/two.jpg"

  ];


  @override
  Widget build(BuildContext context) {


  return Scaffold(
    body: SafeArea(
      child: Container(
        decoration: BoxDecoration(
         gradient: LinearGradient(colors:
         [Color(0xffffffff),Color(0xfffadede)],begin: Alignment.bottomCenter,end: Alignment.topCenter)
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/filter.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/heart.png"),
                ),


              ],

            ),
            SizedBox(height: 20,width: double.infinity,),
            Container(
              width: double.infinity,
              height: 550,
              child:CardSwiper(
                controller: _controller,
                onSwipe: (previousIndex,currentIndex,direction) {
                  if(direction==CardSwiperDirection.right){

                  }else if(direction==CardSwiperDirection.left){

                  }

                  return true;
                },
                cardsCount: profiles.length,
                cardBuilder: (context, index, percentThresholdX, percentThresholdY){
                  return InkWell(
                    onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen()));
                    },
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                      shadowColor: Colors.pink.shade300,
                      child:Stack(
                        children: [
                          Image.asset("${profiles[index]}",fit: BoxFit.fill,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Positioned(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      //for name
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("Name",style: TextStyle(fontSize: 25),),
                                      ),
                                      //for age
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("Age",style: TextStyle(fontSize: 25),),
                                      )
                                    ],

                                  ),
                                  //text for the location
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Location",style: TextStyle(fontSize: 25),),
                                  )
                                ],
                              ),
                            ),

                          ),

                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(width: double.infinity,height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  elevation: 10,
                  shadowColor: Colors.red
                ), child: Image.asset("assets/images/delete.png",width: 80,height: 70,)),
                ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  shadowColor: Colors.pink,
                  elevation: 10
                ), child: Image.asset("assets/images/like.png",width: 100,height: 90,)),
                ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  elevation: 10,
                  shadowColor: Colors.yellow
                ), child: Image.asset("assets/images/star.png",width: 80,height: 70,))
              ],
            )

          ],
        ),
      ),
    ),
  );
  }


}

