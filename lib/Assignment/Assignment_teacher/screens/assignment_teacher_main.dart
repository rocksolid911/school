import 'package:flutter_svg/svg.dart';
import 'package:gradientbutton/lineargradientbutton.dart';

import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/drafts.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/mywidget.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/pending_assignment_card.dart';
//import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/pending_assignment_card.dart';

import 'package:phygitalz_project_1/Common/widgets/bottomnav.dart';
import 'package:phygitalz_project_1/Common/widgets/drawer.dart';
import 'package:phygitalz_project_1/config/app_config.dart';
import 'package:sizer/sizer.dart';

import '../widgets/student_submitted_card.dart';

import 'package:flutter/material.dart';

class AssignmentTeacherMain extends StatefulWidget {
  @override
  _AssignmentTeacherMainState createState() => _AssignmentTeacherMainState();
}

class _AssignmentTeacherMainState extends State<AssignmentTeacherMain>
    with SingleTickerProviderStateMixin {
  TabController controller;
  AppConfig _appConfig;
  final GlobalKey<ScaffoldState> _drawerkey = GlobalKey();

  bool homework = true;
  bool labrecord = false;
  bool portfolio = false;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    double data = MediaQuery.of(context).devicePixelRatio;
    return Scaffold(
      drawer: myDrawer(),
      bottomNavigationBar: mYBottomNav(),
      key: _drawerkey,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/create_assignment");
        },
        child: Container(
          // height: 60,
          // width: 60,
          height: 14.h, width: 14.w,
          decoration: BoxDecoration(
            // image: DecorationImage(
            //     image: AssetImage(
            //         "assets/images/Create Icon.png"),
            //     fit: BoxFit.fill),
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xFFD73865),
                Color(0xFFA40DAB),
                //8A09B1
                Color(0xFF8A09B1),
                // Colors.teal,
                //A40DAB

                //Colors.tealAccent,
                //D73865
              ],
            ),
          ),
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 5.h,
          ),
          // child: SvgPicture.asset(
          //  "assets/images/Create_Icon_Assignment.svg",
          //   fit: BoxFit.cover,
          // )
        ),
      ),
      appBar: PreferredSize(
        // preferredSize: Size.fromHeight(_appConfig.rH(36.5)),
        preferredSize: Size.fromHeight(39.h),
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
                    // color: Colors.pinkAccent,
                    decoration: BoxDecoration(
                        // image: DecorationImage(
                        //   image: AssetImage(
                        //       'assets/images/AppBarWidth450.jpg'),
                        //   fit: BoxFit.cover,
                        // ),
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
                          padding: EdgeInsets.only(left: 2.h, bottom: 4.h),
                          child: GestureDetector(
                            child: Icon(
                              Icons.sort,
                              color: Colors.white,
                              size: 6.h,
                            ),
                            onTap: () {
                              _drawerkey.currentState.openDrawer();
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 5.h, right: 15.h),
                          child: Text(
                            "Assignment",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 5.h, right: 0.5.h),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 5.h,
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
                          padding:
                              EdgeInsets.only(left: 8.0, right: 8.0, top: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                height: 5.h,
                                width: 26.w,
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
                                height: 5.h,
                                width: 28.w,
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
                    //height: _appConfig.rH(0.1.h),
                    height: 1.h,
                  ),
                  PreferredSize(
                    preferredSize: new Size(12.h, 12.h),
                    child: new Container(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(left: 2.h, right: 0),
                        child: new TabBar(
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorWeight: 4,
                          isScrollable: true,
                          indicatorColor: Colors.purple,
                          tabs: [
                            MyWidget(
                              status: "Draft",
                              clr: Colors.pinkAccent,
                            ),
                            MyWidget(
                              status: "Pending",
                              clr: Colors.amberAccent,
                            ),
                            MyWidget(
                              status: "Published",
                              clr: Colors.green,
                            )
                          ],
                          controller: controller,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              borderOnForeground: false,
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          // Column(
          //   children: [
          //     SelectTypeAssignment(),
          //     SizedBox(
          //       height: _appConfig.rH(2.5),
          //     ),
          //     SubmitCard(),
          //   ],
          // ),
          // DraftAssignment(),
          choosetype(),
          //Pendings(),
          choosepending(),
          Center(child: Text("Tab three")),
        ],
      ),
    );
  }

  Widget choosetype() {
    if (homework) {
      return SubmitCard(
        type: "Home work",
        stat: "Draft",
      );
    } else if (labrecord) {
      return SubmitCard(
        type: "Lab Record",
        stat: "Draft",
      );
    } else {
      return SubmitCard(
        type: "Port Folio",
        stat: "Draft",
      );
    }
  }

  Widget choosepending() {
    if (homework) {
      return PendingCard(
        type: "Home work",
        stat: "Pending",
      );
    } else if (labrecord) {
      return PendingCard(
        type: "Lab Record",
        stat: "Pending",
      );
    } else {
      return PendingCard(
        type: "Port Folio",
        stat: "Pending",
      );
    }
  }
}
