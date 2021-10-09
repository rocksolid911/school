import 'package:flutter_svg/svg.dart';
import 'package:gradientbutton/lineargradientbutton.dart';

import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/drafts.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/mywidget.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/pending_assignment_card.dart';
//import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/pending_assignment_card.dart';

import 'package:phygitalz_project_1/Common/widgets/bottomnav.dart';
import 'package:phygitalz_project_1/Common/widgets/drawer.dart';
import 'package:phygitalz_project_1/config/app_config.dart';

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
          height: _appConfig.rH(18), width: _appConfig.rW(18),
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
            size: 32,
          ),
          // child: SvgPicture.asset(
          //  "assets/images/Create_Icon_Assignment.svg",
          //   fit: BoxFit.cover,
          // )
        ),
      ),
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(_appConfig.rH(31)),
        child: Container(
          //color: Colors.green,
          child: new SafeArea(
            child: Card(
              elevation: 5,
              child: Column(
                children: <Widget>[
                  Container(
                    height: _appConfig.rH(10),
                    width: _appConfig.rW(100),
                    //color: Colors.pinkAccent,
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: _appConfig.rWP(1),bottom: _appConfig.rHP(4)),
                          child: GestureDetector(
                            child: Icon(
                              Icons.sort,
                              color: Colors.white,
                            ),
                            onTap: () {
                              _drawerkey.currentState.openDrawer();
                            },
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(bottom: _appConfig.rHP(4)),
                          child: Text(
                            "Assignment",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(bottom: _appConfig.rHP(4)),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              color: Colors.white,
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
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomAnimatedButton(
                                text: "Homework",
                                selected: homework,
                                onTap: (){
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
                                fntsize: 12,
                              ),
                              CustomAnimatedButton(
                                text: "Portfolio",
                                selected: portfolio,
                                onTap: (){
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
                                fntsize: 12,
                              ),
                              CustomAnimatedButton(
                                text: "Lab record",
                                selected: labrecord,
                                onTap: (){
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
                                fntsize: 12,
                              ),
                            ],
                          ),
                        ),

                      ],),
                  ),
                  Divider(
                    thickness: 3,
                  ),
                  // SizedBox(
                  //   height: _appConfig.rH(2),
                  // ),
                  PreferredSize(
                    preferredSize: new Size(200.0, 200.0),
                    child: new Container(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18.0,right: 18),
                        child: new TabBar(
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
    if(homework){
      return SubmitCard(type: "Home work",stat: "Draft",);
    }else if(labrecord){
      return SubmitCard(type: "Lab Record",stat: "Draft",);
    }else{
      return SubmitCard(type: "Port Folio",stat: "Draft",);
    }
  }
  Widget choosepending() {
    if(homework){
      return PendingCard(type: "Home work",stat: "Pending",);
    }else if(labrecord){
      return PendingCard(type: "Lab Record",stat: "Pending",);
    }else{
      return PendingCard(type: "Port Folio",stat: "Pending",);
    }
  }
}
