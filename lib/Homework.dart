import 'package:flutter/material.dart';
import 'Dashboard.dart';
import 'Menu.dart';

class Homework extends StatelessWidget {
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
                                  'Today',
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
                                    subheading: "Maths"),
                                  HomeWorkTile(heading: "Hindi writing 3 pages",
                                    subheading: "Hindi",),
                                  HomeWorkTile(heading: "Test for History first session",
                                    subheading: "Social Science",),

                                ],
                              ),

                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 24, top: 20),
                                child: Text(
                                  'Yesterday',
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
                                      subheading: "Maths"),
                                ],
                              ),

                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 24, top: 20),
                                child: Text(
                                  '16 March 2020',
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
                                      subheading: "Maths"),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 24, top: 20),
                                child: Text(
                                  '15 March 2020',
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
                                      subheading: "Maths"),
                                  SizedBox(height: 200,)
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
