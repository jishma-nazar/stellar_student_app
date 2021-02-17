import 'package:flutter/material.dart';
import 'file:///Users/jishma/AndroidStudioProjects/stellar_app/lib/sign_in.dart';

class OnBoarding extends StatelessWidget {

  static String routeName ='/onboarding';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFFE9D4),
      child: OnBoardingScreen(
        heading: 'Mark Homework\nas completed',
        image: 'Assets/Group 1097.png',
        component: "Assets/Component 61 – 1.png",
        color: Color(0xffFFE9D4),
        nextPage: OnBoardingScreen(
          heading: 'Rectify your\nAttendance',
          image: 'Assets/OBJECTS.png',
          component: "Assets/Component 61 – 1.png",
          color: Color(0xffD4F5FF),
          nextPage: OnBoardingScreen(
            heading: 'Student Exam\n& Report Cards',
            image: 'Assets/Group 1035.png',
            component: "Assets/Component 62 – 1.png",
            color: Color(0xffFFD4D4),
            nextPage: SignIn(),
          ),
        ),
      ),
    );
  }
}

class OnBoardingScreen extends StatelessWidget {

  String heading;
  String image;
  String component;
  Widget nextPage;
  Color color;
  
  OnBoardingScreen({this.heading,this.image,this.component,this.nextPage,this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RichText(
            textAlign: TextAlign.center,
              text: TextSpan(
            text: heading,
            style: TextStyle(
              color: Colors.black,
              fontSize: 34,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.w500
            )
          )),
          Image.asset(image),
          GestureDetector(
              child: Image.asset(component),
          onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => nextPage));
          },)
        ],
      ),
    );
  }
}


