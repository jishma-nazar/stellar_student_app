import 'dart:async';

import 'package:flutter/material.dart';

import 'OnBoardingScreen.dart';


class Splash extends StatefulWidget {


  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
  Timer(
    Duration(
      seconds: 3
    ), () {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> OnBoarding()));
  }
  );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff473F97),
      body: Center(
        child: Container(
          child: Center(child: Image.asset("Assets/icon.png")),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('Assets/Path 107.png'),fit: BoxFit.fitWidth,),
            )
          ),
    ),
      );
  }
}
