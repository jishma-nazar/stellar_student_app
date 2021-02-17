import 'package:flutter/material.dart';

import 'Dashboard.dart';
import 'EnterOTP.dart';

class ForgotPassword extends StatelessWidget {

  static String routeName ='/forgotPassword';


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
                      child: Text("Phone Number",style: TextStyle(
                        fontFamily: "Gilroy",
                        fontSize: 16,
                      )),
                    ),
                    Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 30,),
                            child: Text('+91',style: TextStyle(
                                fontSize: 37,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'Quicksand'
                            ),)
                        ),
                        Container(
                          width: 300,
                          padding: EdgeInsets.only(left: 18,),
                          child: TextField(
                            keyboardType: TextInputType.number,

                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'Quicksand',
                                fontSize: 37
                            ),
                            decoration: InputDecoration(
                                hintText: '98123445678',
                                hintStyle: TextStyle(
                                    color: Colors.grey[300],
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Quicksand',
                                    fontSize: 37
                                ),
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none
                            ),
                          ),
                        ),
                      ],
                    ),


                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>EnterOTP()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 145),
                        child: Center(
                          child: Container(
                            width: 315,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xffFD3667)
                            ),
                            child: Center(
                              child: Text('Generate OTP',
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
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
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
