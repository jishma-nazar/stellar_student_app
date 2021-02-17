import 'package:flutter/material.dart';
import 'Dashboard.dart';
import 'Menu.dart';

class NoticeBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    child: Text("Notice Board",
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
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(8),
                                    height: 600,
                                    child: GridView.count(crossAxisCount: 2,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      NoticeBox(
                                        color: Color(0xffD4FFEA),
                                        image: "Assets/noticeBox1.png",
                                        heading:
                                        "School is going for vacation in next month",
                                      ),
                                      NoticeBox(
                                        color: Color(0xffD4F5FF),
                                        image: "Assets/noticeBox2.png",
                                        heading:
                                        "Summer Book Fair at School Campus in June",
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: NoticeBox(
                                          color: Color(0xffFFD4D4),
                                          image: "Assets/noticeBox3.png",
                                          heading:
                                          "School is going for vacation in next month",
                                        ),
                                      )
                                    ],),
                                  )

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
