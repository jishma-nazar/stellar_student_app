import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:stellar_school_app/Menu.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
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
                bottom: 828,
                  left: 30,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, PageRouteBuilder(
                          transitionDuration: Duration(milliseconds: 450),
                          transitionsBuilder: (context,animation,animationTime,child) {
                            animation = CurvedAnimation(
                                parent: animation,
                                curve: Curves.linearToEaseOut
                            );
                            return ScaleTransition(
                              alignment: Alignment.centerLeft,
                              scale: animation,
                              child: child,
                            );
                          },
                          pageBuilder: (context,animation,animationTime){
                            return Menu();
                          }));
                    },
                    child: Row(
                      children: [
                        Container(
                            child: Image.asset('Assets/Component 54 – 1.png',)),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Yogita Shaje",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500
                              ),),
                              Text('Class VII B',
                                style: TextStyle(
                                color: Colors.white54,
                                  fontWeight: FontWeight.w500
                              ),),
                            ],
                          ),
                        ),
                        SizedBox(width: 170,),
                        Container(
                          child: Badge(
                            badgeColor: Color(0xffFD3667),
                            position: BadgePosition.bottomEnd(bottom:32,end:3),
                            animationDuration: Duration(milliseconds: 300),
                            animationType: BadgeAnimationType.scale,
                            // badgeContent: Text(counter.toString(),
                            //   style: TextStyle(color: Colors.white),),
                            child: Container(
                                child: Image(image: AssetImage('Assets/profilePic.png'))),
                          ),
                        )

                      ],
                    ),
                  )),
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 24, top: 20),
                              child: Text(
                                'Notice Board',
                                style: TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 21,
                                    color: Color(0xff473F97)),
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                height: 205,
                                child: Row(
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
                                    NoticeBox(
                                      color: Color(0xffFFD4D4),
                                      image: "Assets/noticeBox3.png",
                                      heading:
                                          "School is going for vacation in next month",
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 24, top: 20),
                              child: Text(
                                'Homework',
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
                                HomeWorkTile(heading: "Learn Chapter 5 with one Essay",
                                subheading: "English / Today",),
                                HomeWorkTile(heading: "Exercise Trigonometry 1st topic",
                                  subheading: "Maths / Today",),
                                HomeWorkTile(heading: "Hindi writing 3 pages",
                                  subheading: "Hindi / Today",),
                                HomeWorkTile(heading: "Learn Atoms Physics",
                                  subheading: "Science / 16 March 2020",),
                                HomeWorkTile(heading: "English writing 3 pages",
                                  subheading: "English / 16 March 2020",),
                                HomeWorkTile(heading: "English writing 3 pages",
                                  subheading: "English / 16 March 2020",),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class NoticeBox extends StatelessWidget {
  String image;
  Color color;
  String heading;

  NoticeBox({this.color, this.image, this.heading});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 10),
      height: 170,
      width: 160,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color(0xffC4C4C4),
            offset: Offset(0.1, 3.2),
            blurRadius: 4,
            spreadRadius: 1.2)
      ], borderRadius: BorderRadius.circular(20), color: color),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 7),
            child: Image.asset(image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, top: 8),
            child: RichText(
                text: TextSpan(
                    text: heading,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w500))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 14),
            child: Text(
              "02 March 2020",
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          )
        ],
      ),
    );
  }
}



class HomeWorkTile extends StatefulWidget {

  String heading;
  String subheading;

  HomeWorkTile({this.heading,this.subheading});

  @override
  _HomeWorkTileState createState() => _HomeWorkTileState();
}

class _HomeWorkTileState extends State<HomeWorkTile> {

  bool selected;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 15),
        height: 80,
        width: 382,
        decoration: BoxDecoration(
            color: Color(0xffFFF1EC),
            borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          leading: selected == false
              ? GestureDetector(
            onTap: () {
              setState(() {
                selected = true;
              });
            },
            child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Color(0xff473F97),
                    borderRadius:
                    BorderRadius.circular(
                        40)),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 20,
                )),
          ):GestureDetector(
            onTap: () {
              setState(() {
                selected = false;
              });
            },
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(40),
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                      width: 3)),
            ),
          ),
          title: Text(
            widget.heading,
            style: TextStyle(fontSize: 17,
            fontWeight: FontWeight.w500),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(widget.subheading,style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15
            ),),
          ),
        ),

      ),
    );
  }
}

