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
    _appConfig = AppConfig(context);
    double data = MediaQuery.of(context).devicePixelRatio;
    final scale = MediaQuery.of(context).textScaleFactor.clamp(1.0, 1.3);
    return Builder(
      builder: (context) {
        final mediaQueryData = MediaQuery.of(context);
        return MediaQuery(
          data: mediaQueryData.copyWith(textScaleFactor: scale),
          child: Scaffold(
            appBar: PreferredSize(
              // preferredSize: data>=2.75?Size.fromHeight(36.h):Size.fromHeight(39.h),
              preferredSize:
                  data >= 3.0 && MediaQuery.of(context).size.height >= 800
                      ? Size.fromHeight(36.h)
                      : data > 3.0 && MediaQuery.of(context).size.height < 800
                          ? Size.fromHeight(37.h)
                          : Size.fromHeight(39.h),
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
                                padding:
                                    EdgeInsets.only( bottom: 4.h),
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
                                  right: 15.h,
                                ),
                                child: Text(
                                  "View Assignment",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: 3.6.h, right: 0.2.h),
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
                          height: 9.h,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 8.0, right: 8.0, top: 15.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                                      height: 5.h,
                                      width: 28.w,
                                      startcolor: 0xFFD64575,
                                      midcolor: 0xFFBA2F74,
                                      endcolor: 0xFF8522A3,
                                      radius: 25,
                                      activecolor: Colors.white,
                                      inactivecolor:Color (0xFFBA2F74),
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
                                      height: 5.h,
                                      width: 26.w,
                                      startcolor: 0xFFD64575,
                                      midcolor: 0xFFBA2F74,
                                      endcolor: 0xFF8522A3,
                                      radius: 25,
                                      activecolor: Colors.white,
                                      inactivecolor: Color (0xFFBA2F74),
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
                                      height: 5.h,
                                      width: 28.w,
                                      startcolor: 0xFFD64575,
                                      midcolor: 0xFFBA2F74,
                                      endcolor: 0xFF8522A3,
                                      radius: 25,
                                      activecolor: Colors.white,
                                      inactivecolor: Color (0xFFBA2F74),
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
                          height: 1.h,
                        ),
                        PreferredSize(
                          preferredSize: new Size(12.h, 12.h),
                          child: new Container(
                            width: double.infinity,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: data >= 3.0 &&
                                          MediaQuery.of(context).size.height >=
                                              700
                                      ? 0.h
                                      : 2.h,
                                  right: 0),
                              child: new TabBar(
                                indicatorWeight: 4,
                                indicatorSize: TabBarIndicatorSize.label,
                                isScrollable: true,
                                indicatorColor: Color(0xFFBA2F74),
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
                //TODO 1st tab view
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 1.h,
                          right: 1.h,
                          bottom: data >= 2.75 ? 0.5.h : 1.2.h),
                      child: SizedBox(
                        height: data >= 2.75 ? 11.h : 13.h,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 8.0,
                                  right: 8.0,
                                  bottom: 16.0,
                                  top: 12.0),
                              child: Text(
                                "Assignment Tittle : complete the assignment on algebra topic",
                                style: TextStyle(
                                    fontFamily: 'BarlowSemiCondensed-Medium',
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    "class : ",
                                    style: TextStyle(
                                        fontFamily:
                                            'BarlowSemiCondensed-Medium',
                                        fontSize: 8.sp,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "10",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'BarlowSemiCondensed-Medium',
                                      fontSize: 8.5.sp,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Section : ",
                                    style: TextStyle(
                                        fontFamily:
                                            'BarlowSemiCondensed-Medium',
                                        fontSize: 8.sp,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "B",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'BarlowSemiCondensed-Medium',
                                      fontSize: 8.5.sp,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Subject : ",
                                    style: TextStyle(
                                        fontFamily:
                                            'BarlowSemiCondensed-Medium',
                                        fontSize: 8.sp,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "Math",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'BarlowSemiCondensed-Medium',
                                      fontSize: 8.5.sp,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Due Date :",
                                    style: TextStyle(
                                        fontFamily:
                                            'BarlowSemiCondensed-Medium',
                                        fontSize: 8.sp,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "21 oct",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'BarlowSemiCondensed-Medium',
                                      fontSize: 8.5.sp,
                                    ),
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
                            padding: EdgeInsets.all(1.2.h),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),),
                              elevation: 8,
                              child: Container(
                                //color: Colors.blue,
                                height: 12.h,
                                width: 80.w,
                                //color: Colors.yellow,
                                child: Padding(
                                  padding: EdgeInsets.all(1.2.h),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        // backgroundColor: Colors.green,
                                        backgroundImage: AssetImage(
                                            "assets/images/profile_img.jpeg"),
                                        radius: 4.h,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 2.5.h,
                                          left: 2.5.h,
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Lisa Bannet",
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontFamily:
                                                      'BarlowSemiCondensed-Medium',
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.grey),
                                            ),
                                            SizedBox(height: 0.5.h),
                                            Row(
                                              children: [
                                                Text(
                                                  "Roll no : ",
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'BarlowSemiCondensed-Medium',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12.sp,
                                                      color: Colors.grey),
                                                ),
                                                Text(
                                                  "101",
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'BarlowSemiCondensed-Medium',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12.sp),
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
                //TODO 2nd tab view
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 1.h,
                          right: 1.h,
                          bottom: data >= 2.75 ? 0.5.h : 1.2.h),
                      child: SizedBox(
                        height: data >= 2.75 ? 11.h : 13.h,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 8.0,
                                  right: 8.0,
                                  bottom: 16.0,
                                  top: 12.0),
                              child: Text(
                                "Assignment Tittle : complete the assignment on algebra topic",
                                style: TextStyle(
                                    fontFamily: 'BarlowSemiCondensed-Medium',
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    "class : ",
                                    style: TextStyle(
                                        fontFamily:
                                            'BarlowSemiCondensed-Medium',
                                        fontSize: 8.sp,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "10",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'BarlowSemiCondensed-Medium',
                                      fontSize: 8.5.sp,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Section : ",
                                    style: TextStyle(
                                        fontFamily:
                                            'BarlowSemiCondensed-Medium',
                                        fontSize: 8.sp,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "B",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'BarlowSemiCondensed-Medium',
                                      fontSize: 8.5.sp,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Subject : ",
                                    style: TextStyle(
                                        fontFamily:
                                            'BarlowSemiCondensed-Medium',
                                        fontSize: 8.sp,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "Math",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'BarlowSemiCondensed-Medium',
                                      fontSize: 8.5.sp,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Due Date :",
                                    style: TextStyle(
                                        fontFamily:
                                            'BarlowSemiCondensed-Medium',
                                        fontSize: 8.sp,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "21 oct",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'BarlowSemiCondensed-Medium',
                                      fontSize: 8.5.sp,
                                    ),
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
                        itemCount: 6,
                        itemBuilder: (builder, context) {
                          return Padding(
                            padding: EdgeInsets.all(2.h),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),),
                              elevation: 6,
                              child: Container(
                                height: 12.h,
                                width: 80.w,
                                //color: Colors.yellow,
                                child: Padding(
                                  padding: EdgeInsets.all(1.2.h),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        // backgroundColor: Colors.green,
                                        backgroundImage: AssetImage(
                                            "assets/images/profile_img.jpeg"),
                                        radius: 4.h,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 2.5.h,
                                          left: 2.5.h,
                                        ),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Lisa Bannet",
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontFamily:
                                                      'BarlowSemiCondensed-Medium',
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.grey),
                                            ),
                                            SizedBox(height: 1.2.h),
                                            Row(
                                              children: [
                                                Text(
                                                  "Roll no : ",
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'BarlowSemiCondensed-Medium',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12.sp,
                                                      color: Colors.grey),
                                                ),
                                                Text(
                                                  "101",
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'BarlowSemiCondensed-Medium',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12.sp),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: data<2.75?20.h:14.h),
                                        child: GestureDetector(
                                          child: SvgPicture.asset(
                                            "assets/images/Pen_Icon_Assignment.svg",
                                            // height: _appConfig.rH(3.5),
                                            // width: _appConfig.rW(3.5),
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
                //TODO 3rd tab view
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 1.h,
                          right: 1.h,
                          bottom: data >= 2.75 ? 0.5.h : 1.2.h),
                      child: SizedBox(
                        height: data >= 2.75 ? 11.h : 13.h,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 8.0,
                                  right: 8.0,
                                  bottom: 16.0,
                                  top: 12.0),
                              child: Text(
                                "Assignment Tittle : complete the assignment on algebra topic",
                                style: TextStyle(
                                    fontFamily: 'BarlowSemiCondensed-Medium',
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    "class : ",
                                    style: TextStyle(
                                        fontFamily:
                                            'BarlowSemiCondensed-Medium',
                                        fontSize: 8.sp,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "10",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'BarlowSemiCondensed-Medium',
                                      fontSize: 8.5.sp,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Section : ",
                                    style: TextStyle(
                                        fontFamily:
                                            'BarlowSemiCondensed-Medium',
                                        fontSize: 8.sp,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "B",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'BarlowSemiCondensed-Medium',
                                      fontSize: 8.5.sp,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Subject : ",
                                    style: TextStyle(
                                        fontFamily:
                                            'BarlowSemiCondensed-Medium',
                                        fontSize: 8.sp,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "Math",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'BarlowSemiCondensed-Medium',
                                      fontSize: 8.5.sp,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Due Date :",
                                    style: TextStyle(
                                        fontFamily:
                                            'BarlowSemiCondensed-Medium',
                                        fontSize: 8.sp,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "21 oct",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'BarlowSemiCondensed-Medium',
                                      fontSize: 8.5.sp,
                                    ),
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
                        itemCount: 6,
                        itemBuilder: (builder, context) {
                          return Padding(
                            padding: EdgeInsets.all(2.h),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
                              elevation: 6,
                              child: Container(
                                height: 22.h,
                                width: 80.w,
                                //color: Colors.yellow,
                                child: Padding(
                                  padding: EdgeInsets.all(1.2.h),
                                  child: Column(
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 1.5.h),
                                                child: CircleAvatar(
                                                  // backgroundColor: Colors.green,
                                                  backgroundImage: AssetImage(
                                                      "assets/images/profile_img.jpeg"),
                                                  radius: 4.5.h,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: 1.h,
                                                  left: 2.h,
                                                ),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Lisa Barnet",
                                                      style: TextStyle(
                                                          fontSize: 12.sp,
                                                          fontFamily:
                                                              'BarlowSemiCondensed-Medium',
                                                          fontWeight:
                                                              FontWeight.w500,
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
                                                            color: Colors.grey,
                                                            fontSize: 12.sp,
                                                          ),
                                                        ),
                                                        Text(
                                                          "101",
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'BarlowSemiCondensed-Medium',
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 12.sp,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 1.2.h, left: 9.h),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Rating",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w100,
                                                          fontSize: 12.sp),
                                                    ),
                                                    Text(
                                                      "05",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        fontSize: 12.sp,
                                                      ),
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
                                        padding: EdgeInsets.only(left: 2.h),
                                        child: Text(
                                          "need improvement in mensurtation area,second class mark",
                                          style: TextStyle(
                                              fontFamily:
                                                  'BarlowSemiCondensed-Medium',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11.sp),
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
                //TODO 4th tab view
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 1.h,
                          right: 1.h,
                          bottom: data >= 2.75 ? 0.5.h : 1.2.h),
                      child: SizedBox(
                        height: data >= 2.75 ? 11.h : 13.h,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 8.0,
                                  right: 8.0,
                                  bottom: 16.0,
                                  top: 12.0),
                              child: Text(
                                "Assignment Tittle : complete the assignment on algebra topic",
                                style: TextStyle(
                                    fontFamily: 'BarlowSemiCondensed-Medium',
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    "class : ",
                                    style: TextStyle(
                                        fontFamily:
                                            'BarlowSemiCondensed-Medium',
                                        fontSize: 8.sp,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "10",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'BarlowSemiCondensed-Medium',
                                      fontSize: 8.5.sp,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Section : ",
                                    style: TextStyle(
                                        fontFamily:
                                            'BarlowSemiCondensed-Medium',
                                        fontSize: 8.sp,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "B",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'BarlowSemiCondensed-Medium',
                                      fontSize: 8.5.sp,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Subject : ",
                                    style: TextStyle(
                                        fontFamily:
                                            'BarlowSemiCondensed-Medium',
                                        fontSize: 8.sp,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "Math",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'BarlowSemiCondensed-Medium',
                                      fontSize: 8.5.sp,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Due Date :",
                                    style: TextStyle(
                                        fontFamily:
                                            'BarlowSemiCondensed-Medium',
                                        fontSize: 8.sp,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "21 oct",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'BarlowSemiCondensed-Medium',
                                      fontSize: 8.5.sp,
                                    ),
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
                        itemCount: 6,
                        itemBuilder: (builder, context) {
                          return Padding(
                            padding: EdgeInsets.all(2.h),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
                              elevation: 6,
                              child: Container(
                                height: 22.h,
                                width: 80.w,
                                //color: Colors.yellow,
                                child: Padding(
                                  padding: EdgeInsets.all(1.2.h),
                                  child: Column(
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 1.5.h),
                                                child: CircleAvatar(
                                                  // backgroundColor: Colors.green,
                                                  backgroundImage: AssetImage(
                                                      "assets/images/profile_img.jpeg"),
                                                  radius: 4.5.h,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: 1.h,
                                                  left: 2.h,
                                                ),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Lisa Barnet",
                                                      style: TextStyle(
                                                          fontSize: 12.sp,
                                                          fontFamily:
                                                              'BarlowSemiCondensed-Medium',
                                                          fontWeight:
                                                              FontWeight.w500,
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
                                                            color: Colors.grey,
                                                            fontSize: 12.sp,
                                                          ),
                                                        ),
                                                        Text(
                                                          "101",
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'BarlowSemiCondensed-Medium',
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 12.sp,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 1.h, left: data<2.5?13.h:9.h),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Rating",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w100,
                                                          fontSize: 12.sp),
                                                    ),
                                                    Text(
                                                      "05",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        fontSize: 12.sp,
                                                      ),
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
                                        padding: EdgeInsets.only(left: 2.h),
                                        child: Text(
                                          "need improvement in mensurtation area,second class mark",
                                          style: TextStyle(
                                              fontFamily:
                                                  'BarlowSemiCondensed-Medium',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11.sp),
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
              ],
            ),
          ),
        );
      },
    );
  }
}

void Review(BuildContext context) {
  Navigator.pushNamed(context, "/assignment_review_teacher");
}
