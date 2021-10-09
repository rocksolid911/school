import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gradientbutton/lineargradientbutton.dart';
import 'package:phygitalz_project_1/Attendance/Teacher/widgets/attendencecard.dart';
import 'package:phygitalz_project_1/Attendance/Teacher/widgets/roundedtabs.dart';

import 'package:phygitalz_project_1/Common/widgets/bottomnav.dart';
import 'package:phygitalz_project_1/Common/widgets/drawer.dart';
import 'package:phygitalz_project_1/config/app_config.dart';

class AttendanceTeacher extends StatefulWidget {
  const AttendanceTeacher({Key key}) : super(key: key);

  @override
  _AttendanceTeacherState createState() => _AttendanceTeacherState();
}

class _AttendanceTeacherState extends State<AttendanceTeacher>
    with SingleTickerProviderStateMixin {
  TabController controller;
  //AppConfig _appConfig;
  final GlobalKey<ScaffoldState> _drawerkey = GlobalKey();

  bool A = false;
  bool b = false;
  bool c = false;
  bool d = false;

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
    AppConfig _appConfig = AppConfig(context);
    return Scaffold(
      drawer: myDrawer(),
      bottomNavigationBar: mYBottomNav(),
      key: _drawerkey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(_appConfig.rH(45)),
        child: Column(
          children: [
            Container(
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
                              padding: EdgeInsets.only(
                                  left: _appConfig.rWP(1),
                                  bottom: _appConfig.rHP(4)),
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
                              padding:
                                  EdgeInsets.only(bottom: _appConfig.rHP(4)),
                              child: Text(
                                "Assessment",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(bottom: _appConfig.rHP(4)),
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
                      SizedBox(
                        height: _appConfig.rH(2),
                      ),
                      PreferredSize(
                        preferredSize: new Size(200.0, 200.0),
                        child: new Container(
                          width: double.infinity,
                          child: new TabBar(
                            padding: EdgeInsets.only(left: 15),
                            isScrollable: true,
                            indicatorColor: Colors.purple,
                            tabs: [
                              RoundedTabAtT(
                                stat: "Present",
                              ),
                              RoundedTabAtT(
                                stat: "Absent",
                              ),
                              RoundedTabAtT(
                                stat: "Late",
                              ),
                              RoundedTabAtT(
                                stat: "Not Marked",
                              ),
                            ],
                            controller: controller,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.amber,
              height: _appConfig.rH(20),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'T0 Day ',
                      children: <InlineSpan>[
                        TextSpan(
                          text: '21 oct',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Text("Select Section"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomAnimatedButton(
                        text: "10A",
                        selected: A,
                        onTap: () {
                          setState(() {
                            A = true;
                            b = false;
                            c = false;
                            d = false;
                          });
                        },
                        height: 40,
                        width: 60,
                        startcolor: 0xFFD64575,
                        midcolor: 0xFFD64570,
                        endcolor: 0xFF8522A3,
                        radius: 20,
                        activecolor: Colors.white,
                        inactivecolor: Color(0xFFD64570), fntsize: 12,
                      ),
                      CustomAnimatedButton(
                        text: "10B",
                        selected: b,
                        onTap: () {
                          setState(() {
                            A = false;
                            b = true;
                            c = false;
                            d = false;
                          });
                        },
                        height: 40,
                        width: 60,
                        startcolor: 0xFFD64575,
                        midcolor: 0xFFD64570,
                        endcolor: 0xFF8522A3,
                        radius: 20,
                        activecolor: Colors.white,
                        inactivecolor: Colors.pinkAccent, fntsize: 12,
                      ),
                      CustomAnimatedButton(
                        text: "10C",
                        selected: c,
                        onTap: () {
                          setState(() {
                            A = false;
                            b = false;
                            c = true;
                            d = false;
                          });
                        },
                        height: 40,
                        width: 60,
                        startcolor: 0xFFD64575,
                        midcolor: 0xFFD64570,
                        endcolor: 0xFF8522A3,
                        radius: 20,
                        activecolor: Colors.white,
                        inactivecolor: Color(0xFFD64570), fntsize: 12,
                      ),
                      CustomAnimatedButton(
                        text: "10D",
                        selected: d,
                        onTap: () {
                          setState(() {
                            A = false;
                            b = false;
                            c = false;
                            d = true;
                          });
                        },
                        height: 40,
                        width: 60,
                        startcolor: 0xFFD64575,
                        midcolor: 0xFFD64570,
                        endcolor: 0xFF8522A3,
                        radius: 20,
                        activecolor: Colors.white,
                        inactivecolor: Color(0xFFD64570), fntsize: 12,
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return SizedBox.square(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Card(elevation: 5,),
                                  //clipBehavior: Clip.hardEdge,
                                  color: Colors.primaries[
                                      Random().nextInt(Colors.primaries.length)],
                                ),
                              ),
                              dimension: _appConfig.rH(15),
                            );
                          }),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
         // Center(child: Text("Tab one")),
          AtCard(),
          Center(child: Text("Tab two")),
          Center(child: Text("Tab three")),
          Center(child: Text("Tab four")),
        ],
      ),
    );
  }
}
