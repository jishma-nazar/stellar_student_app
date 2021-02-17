import 'package:flutter/material.dart';

import 'Dashboard.dart';

class GeneralKnowledge extends StatefulWidget {

  @override
  _GeneralKnowledgeState createState() => _GeneralKnowledgeState();
}

class _GeneralKnowledgeState extends State<GeneralKnowledge> {
  bool selected;

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
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Dashboard()));
                      },
                      icon: Icon(Icons.arrow_back,
                        color: Colors.white,
                        size: 30,),
                    )),
                Positioned(
                    bottom: 825,
                    left: 70,
                    child: Text("General Knowledge",
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
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 230),
                                        child: Text("Exam code: 121"),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Icon(Icons.timer),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 24, top: 20),
                                    child: Text(
                                      'Question 1',
                                      style: TextStyle(
                                          fontFamily: 'Gilroy',
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
                                          color: Color(0xffE8EAEC),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('*Question 1',
                                          style: TextStyle(
                                            fontFamily: 'Gilroy'
                                          ),),
                                        ),
                                      ),

                                      Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 15),
                            height: 80,
                            width: 382,
                            decoration: BoxDecoration(
                                color: Colors.white,
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
                                "Option 1",
                                style: TextStyle(fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),

                            ),

                          ),
                        ),
                                      Center(
                                        child: Container(
                                          //margin: EdgeInsets.only(top: 15),
                                          height: 80,
                                          width: 382,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
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
                                              "Option 2",
                                              style: TextStyle(fontSize: 17,
                                                  fontWeight: FontWeight.w500),
                                            ),

                                          ),

                                        ),
                                      ),
                                      Center(
                                        child: Container(
                                         // margin: EdgeInsets.only(top: 15),
                                          height: 80,
                                          width: 382,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
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
                                              "Option 3",
                                              style: TextStyle(fontSize: 17,
                                                  fontWeight: FontWeight.w500),
                                            ),

                                          ),

                                        ),
                                      ),
                                      Center(
                                        child: Container(
                                         // margin: EdgeInsets.only(top: 15),
                                          height: 80,
                                          width: 382,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
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
                                              "Option 4",
                                              style: TextStyle(fontSize: 17,
                                                  fontWeight: FontWeight.w500),
                                            ),

                                          ),

                                        ),
                                      ),
                                      Center(
                                        child: Container(
                                          //margin: EdgeInsets.only(top: 15),
                                          height: 80,
                                          width: 382,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
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
                                              "Option 4",
                                              style: TextStyle(fontSize: 17,
                                                  fontWeight: FontWeight.w500),
                                            ),

                                          ),

                                        ),
                                      ),



                                    ],
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 24, top: 20),
                                    child: Text(
                                      'Question 2',
                                      style: TextStyle(
                                          fontFamily: 'Gilroy',
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
                                          color: Color(0xffE8EAEC),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('*Question 2',
                                            style: TextStyle(
                                                fontFamily: 'Gilroy'
                                            ),),
                                        ),
                                      ),

                                      Center(
                                        child: Container(
                                          margin: EdgeInsets.only(top: 15),
                                          height: 80,
                                          width: 382,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
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
                                              "Option 1",
                                              style: TextStyle(fontSize: 17,
                                                  fontWeight: FontWeight.w500),
                                            ),

                                          ),

                                        ),
                                      ),
                                      Center(
                                        child: Container(
                                          //margin: EdgeInsets.only(top: 15),
                                          height: 80,
                                          width: 382,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
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
                                              "Option 2",
                                              style: TextStyle(fontSize: 17,
                                                  fontWeight: FontWeight.w500),
                                            ),

                                          ),

                                        ),
                                      ),
                                      Center(
                                        child: Container(
                                          // margin: EdgeInsets.only(top: 15),
                                          height: 80,
                                          width: 382,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
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
                                              "Option 3",
                                              style: TextStyle(fontSize: 17,
                                                  fontWeight: FontWeight.w500),
                                            ),

                                          ),

                                        ),
                                      ),
                                      Center(
                                        child: Container(
                                          // margin: EdgeInsets.only(top: 15),
                                          height: 80,
                                          width: 382,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
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
                                              "Option 4",
                                              style: TextStyle(fontSize: 17,
                                                  fontWeight: FontWeight.w500),
                                            ),

                                          ),

                                        ),
                                      ),
                                      Center(
                                        child: Container(
                                          //margin: EdgeInsets.only(top: 15),
                                          height: 80,
                                          width: 382,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
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
                                              "Option 4",
                                              style: TextStyle(fontSize: 17,
                                                  fontWeight: FontWeight.w500),
                                            ),

                                          ),

                                        ),
                                      ),



                                    ],
                                  ),
                                  SizedBox(height: 30,),
                                  Center(
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Dashboard()));
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
                                  SizedBox(height: 200,)

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
