import 'package:flutter/material.dart';

import 'ResetPassword.dart';

class EnterOTP extends StatefulWidget {

  const EnterOTP({
    Key key,
  }) : super(key: key);


  @override
  _EnterOTPState createState() => _EnterOTPState();
}

class _EnterOTPState extends State<EnterOTP> {

  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;
  FocusNode pin5FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
  }


  @override
  void dispose() {
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    pin5FocusNode.dispose();

  }

  void nextField(String value, FocusNode focusNode) {
    if(value.length == 1) {
      focusNode.requestFocus();
    }
  }


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
                  child: Text("Generate OTP",style: TextStyle(
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
                      child: Text("Enter OTP",style: TextStyle(
                        fontFamily: "Gilroy",
                        fontSize: 16,
                      )),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 30,),
                        otpBox(onChanged: (value) {
                          nextField(value,pin2FocusNode);
                        },),
                        otpBox(onChanged: (value) => nextField(value, pin3FocusNode),),
                        otpBox(onChanged: (value) => nextField(value, pin4FocusNode),),
                        otpBox(onChanged: (value) => nextField(value, pin5FocusNode),),
                        otpBox(onChanged: (value) {
                          if (value.length == 1) {
                            pin4FocusNode.unfocus();
                          }
                        })
                        ]
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 15),
                      child: Text("Send Again",style: TextStyle(
                        color: Color(0xffFD3667),
                        fontSize: 16,
                        fontFamily: 'Gilroy'

                      ),),
                    ),


                    InkWell(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ResetPassword()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Center(
                          child: Container(
                            width: 315,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xffFD3667)
                            ),
                            child: Center(
                              child: Text('Verify',
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
                          padding: const EdgeInsets.only(top: 28),
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

class otpBox extends StatelessWidget {

  Function onChanged;

  otpBox({this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20,right: 10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffEAECEF),
      ),
      child: TextField(
        onChanged: onChanged,
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: 22,
          fontFamily: 'Gilroy'
        ),
        maxLength: 1,
        decoration: InputDecoration(
          counterText: "",
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 22,vertical: 15),
        ),
      )

    );
  }
}
