import 'package:flutter/material.dart';
import 'package:gradientbutton/lineargradientbutton.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/mywidget.dart';
import 'package:phygitalz_project_1/Common/widgets/drawer.dart';
import 'package:phygitalz_project_1/config/app_config.dart';
import 'package:sizer/sizer.dart';

class AssignmentTeacher extends StatefulWidget {
  @override
  _AssignmentTeacherState createState() => _AssignmentTeacherState();
}

class _AssignmentTeacherState extends State<AssignmentTeacher>
    with TickerProviderStateMixin {
  AppConfig _appConfig;
  TabController controller;

  bool homework = true;
  bool labrecord = false;
  bool portfolio = false;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    _appConfig=AppConfig(context);
    double data = MediaQuery.of(context).devicePixelRatio;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: data>=2.75?Size.fromHeight(36.h):Size.fromHeight(39.h),
        child: Container(
          //color: Colors.green,
          child: new SafeArea(
            child: Card(
              elevation: 5,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 10.h,
                    width: 100.h,
                    //color: Colors.pinkAccent,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color(0xFFDD3B64),
                              // Colors.blue,
                              Color(0xFFB017A5),
                              Color(0xFF7E17B0),
                            ]),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 1.5.h, bottom: 4.h),
                          child: GestureDetector(
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 4.h,
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 3.5.h,
                           // right: 15.h,
                          ),
                          child: Text(
                            "Assignment",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 3.6.h,right: 0.2.h),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 4.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //TODO space for filter buttons
                  SizedBox(
                    height: _appConfig.rH(8),
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(left: 8.0, right: 8.0, top: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomAnimatedButton(
                                text: "Homework",
                                selected: homework,
                                onTap: () {
                                  setState(() {
                                    homework = true;
                                    labrecord = false;
                                    portfolio = false;
                                  });
                                },
                                height: _appConfig.rH(5),
                                width: _appConfig.rW(25),
                                startcolor: 0xFFD64575,
                                midcolor: 0xFFD64570,
                                endcolor: 0xFF8522A3,
                                radius: 25,
                                activecolor: Colors.white,
                                inactivecolor: Color(0xFFD64570),
                                fntsize: 10.sp,
                              ),
                              CustomAnimatedButton(
                                text: "Portfolio",
                                selected: portfolio,
                                onTap: () {
                                  setState(() {
                                    homework = false;
                                    labrecord = false;
                                    portfolio = true;
                                  });
                                },
                                height: _appConfig.rH(5),
                                width: _appConfig.rW(25),
                                startcolor: 0xFFD64575,
                                midcolor: 0xFFD64570,
                                endcolor: 0xFF8522A3,
                                radius: 25,
                                activecolor: Colors.white,
                                inactivecolor: Color(0xFFD64570),
                                fntsize: 10.sp,
                              ),
                              CustomAnimatedButton(
                                text: "Lab record",
                                selected: labrecord,
                                onTap: () {
                                  setState(() {
                                    homework = false;
                                    labrecord = true;
                                    portfolio = false;
                                  });
                                },
                                height: _appConfig.rH(5),
                                width: _appConfig.rW(32),
                                startcolor: 0xFFD64575,
                                midcolor: 0xFFD64570,
                                endcolor: 0xFF8522A3,
                                radius: 25,
                                activecolor: Colors.white,
                                inactivecolor: Color(0xFFD64570),
                                fntsize: 10.sp,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 3,
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  PreferredSize(
                    preferredSize: new Size(12.h, 12.h),
                    child: new Container(
                      width: double.infinity,
                      child: Padding(
                        padding:  EdgeInsets.only(left: 2.h, right: 0),
                        child: new TabBar(
                          indicatorWeight: 4,
                          indicatorSize: TabBarIndicatorSize.label,
                          isScrollable: true,
                          indicatorColor: Colors.purple,
                          tabs: [
                            //TODO this mywidget will come from students review service
                            MyWidget(
                              status: "Pending",
                              clr: Colors.pinkAccent,
                            ),
                            MyWidget(
                              status: "Submitted",
                              clr: Colors.amberAccent,
                            ),
                            MyWidget(
                              status: "Accepted",
                              clr: Colors.green,
                            ),
                            MyWidget(
                              status: "Rejected",
                              clr: Colors.brown,
                            )
                          ],
                          controller: controller,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          //Center(child: Text("Tab one")),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 1.h, right: 1.h, bottom: data>=2.75?0.5.h:1.2.h),
                child: SizedBox(
                  height: data>=2.75?13.3.h:15.h,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 8.0, right: 8.0, bottom: 16.0, top: 12.0),
                        child: Text(
                          "Assignment Tittle : complete the assignment on algebra topic",
                          style: TextStyle(
                              fontFamily: 'BarlowSemiCondensed-Medium',
                              fontStyle: FontStyle.normal,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [
                            Text("class : ",style: TextStyle(fontFamily: 'BarlowSemiCondensed-Medium',fontSize: 12.sp,color: Colors.grey),),
                            Text(
                              "10",
                              style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'BarlowSemiCondensed-Medium',fontSize:12.5.sp, ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Section : ",style: TextStyle(fontFamily: 'BarlowSemiCondensed-Medium',fontSize: 12.sp,color: Colors.grey),),
                            Text(
                              "B",
                              style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'BarlowSemiCondensed-Medium',fontSize:12.5.sp, ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Subject : ",style: TextStyle(fontFamily: 'BarlowSemiCondensed-Medium',fontSize: 12.sp,color: Colors.grey),),
                            Text(
                              "Math",
                              style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'BarlowSemiCondensed-Medium',fontSize:12.5.sp, ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Due Date :",style: TextStyle(fontFamily: 'BarlowSemiCondensed-Medium',fontSize: 12.sp,color: Colors.grey),),
                            Text(
                              "21 oct",
                              style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'BarlowSemiCondensed-Medium',fontSize:12.5.sp, ),
                            ),
                          ],
                        ),

                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 15,
                  itemBuilder: (builder, context) {
                    return Padding(
                      padding: EdgeInsets.all(2.h),
                      child: Card(
                        elevation: 8,
                        child: Container(
                          height: _appConfig.rH(15),
                          width: _appConfig.rW(30),
                          //color: Colors.yellow,
                          child: Padding(
                            padding: EdgeInsets.all(_appConfig.rWP(1)),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  // backgroundColor: Colors.green,
                                  backgroundImage: AssetImage(
                                      "assets/images/profile_img.jpeg"),
                                  radius: _appConfig.rH(5),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: _appConfig.rHP(5),
                                    left: _appConfig.rWP(2.5),
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Lisa Bannet",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily:
                                                'BarlowSemiCondensed-Medium',
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Text(
                                            "Roll no : ",
                                            style: TextStyle(
                                                fontFamily:
                                                    'BarlowSemiCondensed-Medium',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            "101",
                                            style: TextStyle(
                                                fontFamily:
                                                    'BarlowSemiCondensed-Medium',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          // Center(child: Text("Tab two")),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                child: SizedBox(
                  height: _appConfig.rH(14),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 8.0, right: 8.0, bottom: 16.0, top: 12.0),
                        child: Text(
                          "Assignment Tittle : complete the assignment on algebra topic",
                          style: TextStyle(
                              fontFamily: 'Barlow',
                              fontStyle: FontStyle.normal,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [
                            Text("class : "),
                            Text(
                              "10",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Section : "),
                            Text(
                              "B",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Subject : "),
                            Text(
                              "Math",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Due Date"),
                            Text(
                              "21 oct",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        //   child: RichText(
                        //       text: TextSpan(
                        //         text: "Class",
                        //         style: TextStyle(fontSize: 14),
                        //         children: <TextSpan>[
                        //           TextSpan(text: '10', style: TextStyle(fontWeight: FontWeight.bold)),
                        //           TextSpan(text: "Subject",style: TextStyle(fontWeight: FontWeight.w100))
                        //         ],
                        //       ),
                        // ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (builder, context) {
                    return Padding(
                      padding: EdgeInsets.all(_appConfig.rWP(2)),
                      child: Card(
                        child: Container(
                          height: _appConfig.rH(15),
                          width: _appConfig.rW(30),
                          //color: Colors.yellow,
                          child: Padding(
                            padding: EdgeInsets.all(_appConfig.rWP(1)),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  // backgroundColor: Colors.green,
                                  backgroundImage: AssetImage(
                                      "assets/images/profile_img.jpeg"),
                                  radius: _appConfig.rH(5),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: _appConfig.rHP(5),
                                    left: _appConfig.rWP(2.5),
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Lisa Barnet",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily:
                                                'BarlowSemiCondensed-Medium',
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Roll no : ",
                                            style: TextStyle(
                                                fontFamily:
                                                    'BarlowSemiCondensed-Medium',
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            "101",
                                            style: TextStyle(
                                                fontFamily:
                                                    'BarlowSemiCondensed-Medium',
                                                fontWeight: FontWeight.bold,
                                                // color: Colors.grey,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: _appConfig.rWP(32)),
                                  child: GestureDetector(
                                    child: SvgPicture.asset(
                                      "assets/images/Pen_Icon_Assignment.svg",
                                      height: _appConfig.rH(3.5),
                                      width: _appConfig.rW(3.5),
                                    ),
                                    onTap: () {
                                      Review(this.context);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),

          //Center(child: Text("Tab three")),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                child: SizedBox(
                  height: _appConfig.rH(14),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 8.0, right: 8.0, bottom: 16.0, top: 12.0),
                        child: Text(
                          "Assignment Tittle : complete the assignment on algebra topic",
                          style: TextStyle(
                              fontFamily: 'Barlow',
                              fontStyle: FontStyle.normal,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [
                            Text("class : "),
                            Text(
                              "10",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Section : "),
                            Text(
                              "B",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Subject : "),
                            Text(
                              "Math",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Due Date"),
                            Text(
                              "21 oct",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        //   child: RichText(
                        //       text: TextSpan(
                        //         text: "Class",
                        //         style: TextStyle(fontSize: 14),
                        //         children: <TextSpan>[
                        //           TextSpan(text: '10', style: TextStyle(fontWeight: FontWeight.bold)),
                        //           TextSpan(text: "Subject",style: TextStyle(fontWeight: FontWeight.w100))
                        //         ],
                        //       ),
                        // ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (builder, context) {
                    return Padding(
                      padding: EdgeInsets.all(_appConfig.rWP(2)),
                      child: Card(
                        child: Container(
                          height: _appConfig.rH(20),
                          width: _appConfig.rW(30),
                          //color: Colors.yellow,
                          child: Padding(
                            padding: EdgeInsets.all(_appConfig.rWP(1)),
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: _appConfig.rHP(1.5)),
                                          child: CircleAvatar(
                                            // backgroundColor: Colors.green,
                                            backgroundImage: AssetImage(
                                                "assets/images/profile_img.jpeg"),
                                            radius: _appConfig.rH(4.5),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: _appConfig.rHP(1),
                                            left: _appConfig.rWP(2.5),
                                          ),
                                          child: Column(
                                            children: [
                                              Text(
                                                "Lisa Barnet",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily:
                                                        'BarlowSemiCondensed-Medium',
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.grey),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Roll No : ",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'BarlowSemiCondensed-Medium',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.grey),
                                                  ),
                                                  Text(
                                                    "101",
                                                    style: TextStyle(
                                                      fontFamily:
                                                          'BarlowSemiCondensed-Medium',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: _appConfig.rWP(30)),
                                          child: Column(
                                            children: [
                                              Text(
                                                "Rating",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w100,
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                "05",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w800),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: _appConfig.rWP(15)),
                                      child: Divider(
                                        thickness: 2,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: _appConfig.rWP(4)),
                                  child: Text(
                                    "need improvement in mensurtation area,second class mark",
                                    style: TextStyle(
                                        fontFamily:
                                            'BarlowSemiCondensed-Medium',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          // Center(child: Text("Tab four")),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                child: SizedBox(
                  height: _appConfig.rH(14),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 8.0, right: 8.0, bottom: 16.0, top: 12.0),
                        child: Text(
                          "Assignment Tittle : complete the assignment on algebra topic",
                          style: TextStyle(
                              fontFamily: 'Barlow',
                              fontStyle: FontStyle.normal,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [
                            Text("class : "),
                            Text(
                              "10",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Section : "),
                            Text(
                              "B",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Subject : "),
                            Text(
                              "Math",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Due Date"),
                            Text(
                              "21 oct",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        //   child: RichText(
                        //       text: TextSpan(
                        //         text: "Class",
                        //         style: TextStyle(fontSize: 14),
                        //         children: <TextSpan>[
                        //           TextSpan(text: '10', style: TextStyle(fontWeight: FontWeight.bold)),
                        //           TextSpan(text: "Subject",style: TextStyle(fontWeight: FontWeight.w100))
                        //         ],
                        //       ),
                        // ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (builder, context) {
                    return Padding(
                      padding: EdgeInsets.all(_appConfig.rWP(2)),
                      child: Card(
                        child: Container(
                          height: _appConfig.rH(18),
                          width: _appConfig.rW(30),
                          //color: Colors.yellow,
                          child: Padding(
                            padding: EdgeInsets.all(_appConfig.rWP(1)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: _appConfig.rHP(1.5)),
                                      child: CircleAvatar(
                                        // backgroundColor: Colors.green,
                                        backgroundImage: AssetImage(
                                            "assets/images/profile_img.jpeg"),
                                        radius: _appConfig.rH(3.5),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: _appConfig.rHP(0),
                                        left: _appConfig.rWP(2.5),
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            "Lisa Barnet",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text(
                                            "Roll no : 101",
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: _appConfig.rWP(32)),
                                      child: Column(
                                        children: [
                                          Text(
                                            "Rating",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w100),
                                          ),
                                          Text(
                                            "05",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w800),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: _appConfig.rWP(8)),
                                  child: Divider(
                                    thickness: 2,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: _appConfig.rWP(4)),
                                  child: Text(
                                      "need improvement in mensurtation area,second class mark"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void Review(BuildContext context) {
  Navigator.pushNamed(context, "/assignment_review_teacher");
}

