import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'file:///Users/jishma/AndroidStudioProjects/stellar_app/lib/sign_in.dart';

class ResetPassword extends StatefulWidget {

  const ResetPassword({
    Key key,
  }) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 520,
            decoration: BoxDecoration(
                color: Color(0xff473F97),
                borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(30,25)),
                image: DecorationImage(
                    image: AssetImage('Assets/Path 107.png'),fit: BoxFit.fitWidth
                )
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 157.81),
                  child: Image.asset("Assets/icon.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Text("Forgot Password",style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.w500
                  ),),
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              color: Color(0xff473F97),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.elliptical(30,25)),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30,left: 30),
                      child: Text("Create New Password",style: TextStyle(
                        fontFamily: "Gilroy",
                        fontSize: 16,
                      )),
                    ),
                    Container(
                      width: 300,
                      padding: EdgeInsets.only(left: 30),
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Gilroy',
                            fontSize: 30
                        ),
                        decoration: InputDecoration(
                            hintText: '**********',
                            hintStyle: TextStyle(
                                color: Colors.grey[300],
                                fontWeight: FontWeight.w900,
                                fontFamily: 'Gilroy',
                                fontSize: 37
                            ),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Text("Confirm New Password",style: TextStyle(
                        fontFamily: "Gilroy",
                        fontSize: 16,
                      )),
                    ),
                    Container(
                      width: 300,
                      padding: EdgeInsets.only(left: 30,bottom: 10),
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Gilroy',
                            fontSize: 30
                        ),
                        decoration: InputDecoration(
                            hintText: '**********',
                            hintStyle: TextStyle(
                                color: Colors.grey[300],
                                fontWeight: FontWeight.w900,
                                fontFamily: 'Gilroy',
                                fontSize: 37
                            ),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 45),
                      child: Center(
                        child: InkWell(
                          onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignIn()));
                          },
                          child: Container(
                            width: 315,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xffFD3667)
                            ),
                            child: Center(
                              child: Text('Submit',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Gilroy',
                                    fontWeight : FontWeight.w500,
                                    color: Colors.white
                                ),),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                          },
                          child: Text("Cancel",style: TextStyle(
                              color: Color(0xffFD3667),
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w500,
                              fontSize: 16

                          ),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
