import 'package:flutter/material.dart';
import 'package:stellar_school_app/GeneralKnowledge.dart';
import 'Menu.dart';


class Examination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xff473F97),
      body: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: Stack(
              children: [
                Positioned(
                  bottom: 775,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 520,
                    decoration: BoxDecoration(
                        color: Color(0xff473F97),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.elliptical(40, 30)),
                        image: DecorationImage(
                            image: AssetImage('Assets/Path 107.png'),
                            fit: BoxFit.fitWidth)),
                  ),
                ),
                Positioned(
                    bottom: 815,
                    left: 18,
                    child: IconButton(
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Menu()));
                      },
                      icon: Icon(Icons.arrow_back,
                        color: Colors.white,
                        size: 30,),
                    )),
                Positioned(
                    bottom: 825,
                    left: 70,
                    child: Text("Homework",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w500
                      ),)),


                Positioned(
                  top: 104,
                  right: 0,
                  left: 0,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        color: Color(0xff473F97),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.elliptical(40, 30)),
                            color: Colors.white,
                          ),
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 24, top: 20),
                                    child: Text(
                                      'Examination List',
                                      style: TextStyle(
                                          fontFamily: 'Quicksand',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 21,
                                          color: Color(0xff473F97)),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                     Container(
                                       margin: EdgeInsets.only(left: 20,right: 20,top: 15),
                                       width: MediaQuery.of(context).size.height,
                                       height: 115,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(12),
                                         color: Color(0xffD4FFEA),
                                       ),
                                       child: Column(
                                         children: [
                                           ListTile(
                                             title: Text("Science Basic Assessment Test",
                                             style: TextStyle(
                                               color: Colors.black,
                                               fontWeight: FontWeight.w500,

                                             ),),
                                             subtitle: Padding(
                                               padding: const EdgeInsets.only(top: 4),
                                               child: Row(
                                                 children: [
                                                   Icon(Icons.timer_outlined,color: Colors.black,
                                                   size: 20,),
                                                   SizedBox(width: 5,),
                                                   Text("Duration: 30 Min",
                                                   style: TextStyle(
                                                     fontWeight: FontWeight.w500,
                                                     fontSize: 14
                                                   ),)
                                                 ],
                                               ),
                                             ),
                                             trailing: Padding(
                                               padding: const EdgeInsets.only(top: 15),
                                               child: IconButton(
                                                 onPressed: (){},
                                                 icon: Icon(Icons.arrow_forward_ios,),
                                                 iconSize: 20,
                                               ),
                                             ),
                                           ),
                                           InkWell(
                                             onTap: (){
                                               Navigator.push(context, MaterialPageRoute(builder: (context) => GeneralKnowledge()));
                                             },
                                             child: Container(
                                               margin: EdgeInsets.only(right: 251),
                                               height: 20,
                                               width: 100,
                                               decoration: BoxDecoration(
                                                   color: Color(0xffFD3667),
                                                   borderRadius: BorderRadius.circular(50)
                                               ),
                                               child: Row(
                                                 children: [
                                                  SizedBox(width: 10,),
                                                   Icon(Icons.play_arrow,size: 15,color: Colors.white,),
                                                   Text("Start test",style: TextStyle(
                                                     color: Colors.white
                                                   ),)
                                                 ],
                                               ),
                                             ),
                                           )
                                         ],
                                       ),
                                     ),


                                    ],
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ])),
    );
  }
}
