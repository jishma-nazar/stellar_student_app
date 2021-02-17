import 'package:flutter/material.dart';
import 'file:///Users/jishma/AndroidStudioProjects/stellar_app/lib/Dashboard.dart';
import 'file:///Users/jishma/AndroidStudioProjects/stellar_app/lib/Examination.dart';
import 'package:stellar_school_app/Homework.dart';
import 'file:///Users/jishma/AndroidStudioProjects/stellar_app/lib/NoticeBoard.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff473F97),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20,top: 15),
                    child: Image(
                      image: AssetImage('Assets/profilePic.png'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 200,
                    child: ListTile(
                      title: Text('Yogita Shaje',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 2,left: 3),
                        child: Text("Class VII B",
                        style: TextStyle(
                          color: Colors.white54,
                        ),),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 100,top: 12),
                    child: IconButton(
                      onPressed: (){
                        Navigator.pushReplacement(context, PageRouteBuilder(
                            transitionDuration: Duration(milliseconds: 200),
                            transitionsBuilder: (context,animation,animationTime,child) {
                              animation = CurvedAnimation(
                                  parent: animation,
                                  curve: Curves.fastLinearToSlowEaseIn
                              );
                              return ScaleTransition(
                                alignment: Alignment.center,
                                scale: animation,
                                child: child,
                              );
                            },
                            pageBuilder: (context,animation,animationTime){
                              return Dashboard();
                            }));
                      },
                      icon: Icon(Icons.clear),
                    iconSize: 33,
                    color: Colors.white,),
                  )
                ],
              ),
              SizedBox(height: 50,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MenuItem(title: "Dashboard",image: "Assets/Component 42 – 1.png",nextPage: Dashboard(),),
                      MenuItem(title: "Homework", image: "Assets/Component 43 – 1.png",nextPage: Homework(),),
                      MenuItem(title: "Attendance",image: "Assets/Component 44 – 1.png",nextPage: Dashboard(),)
                    ],
                  ),
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MenuItem(title: "Fee Details",image: "Assets/Component 45 – 1.png",nextPage: Dashboard(),),
                      MenuItem(title: "Examination", image: "Assets/Component 46 – 1.png",nextPage: Examination(),),
                      MenuItem(title: "Report Cards",image: "Assets/Component 47 – 1.png",nextPage: Dashboard(),)
                    ],
                  ),
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MenuItem(title: "Calendar",image: "Assets/Group 1198.png",nextPage: Dashboard(),),
                      MenuItem(title: "Notice Board", image: "Assets/Component 49 – 1.png",nextPage: NoticeBoard(),),
                      MenuItem(title: "Multimedia",image: "Assets/Component 48 – 1.png",nextPage: Dashboard(),)
                    ],
                  ),
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MenuItem(title: "Academic Year",image: "Assets/Component 51 – 1.png",nextPage: Dashboard(),),
                      SizedBox(width: 40),
                      MenuItem(title: "Profile", image: "Assets/Component 52 – 1.png",nextPage: Dashboard(),),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {

  String image;
  String title;
  Widget nextPage;

  MenuItem({this.image,this.title,this.nextPage});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> nextPage));
      },
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: AssetImage(image)
              )
            ),

          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(title,style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 16

            ),),
          )
        ],
      ),
    );
  }
}
