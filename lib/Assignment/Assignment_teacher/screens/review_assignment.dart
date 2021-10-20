import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/rate_button.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/save_cancel_button.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/status_button.dart';
import 'package:phygitalz_project_1/config/app_config.dart';

class ReviewAssignment extends StatefulWidget {
  const ReviewAssignment({Key key}) : super(key: key);

  @override
  _ReviewAssignmentState createState() => _ReviewAssignmentState();
}

class _ReviewAssignmentState extends State<ReviewAssignment> {
  AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Assignment Review"),
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ), //this section help to cut the bottom area
          // backgroundColor: Colors.pink,

          flexibleSpace: ClipRRect(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xFFE86FE3),
                    Color(0xFFA82AA8),
                    Color(0xFFCC00CC),
                  ],
                ),
              ),
            ),
          ),
          actions: [], //to add gradient color to app bar
        ),
        body: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: _appConfig.rWP(8),
                      right: _appConfig.rWP(8),
                      bottom: _appConfig.rHP(2),
                      top: _appConfig.rHP(4)),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/Subject_Icon_W.Name_Chemistry.svg",
                        width: _appConfig.rW(10),
                        height: _appConfig.rH(10),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: _appConfig.rWP(4),
                          bottom: _appConfig.rHP(0),
                        ),
                        child: Text(
                          "Chemistry",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'BarlowSemiCondensed-Medium'),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: _appConfig.rWP(3),
                      bottom: _appConfig.rWP(8),
                      right: _appConfig.rWP(8)),
                  child: Text(
                    "complete the Exercise as given",
                    style: TextStyle(
                        fontSize: 24, fontFamily: 'BarlowSemiCondensed-Medium'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: _appConfig.rWP(7),
                    bottom: _appConfig.rHP(2),
                    right: _appConfig.rWP(2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Opacity(
                            opacity: 0.4,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Name is name",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: _appConfig.rWP(10)),
                            child: Text(
                              "Vishall23",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'BarlowSemiCondensed-Medium',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Opacity(
                              opacity: 0.4,
                              child: Text(
                                "Submitted Date",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 65),
                            child: Text(
                              "21 Oct",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'BarlowSemiCondensed-Medium',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 5,
                  child: Container(
                    height: _appConfig.rH(20),
                    width: _appConfig.rW(90),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: _appConfig.rWP(1),
                              right: _appConfig.rWP(28),
                              top: _appConfig.rHP(3)),
                          child: Text(
                            "Submmited Assignment",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              fontFamily: 'BarlowSemiCondensed-Medium',

                            ),
                          ),
                        ),
                        Divider(
                          thickness: 3,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: _appConfig.rWP(1),
                      right: _appConfig.rWP(64),
                      top: _appConfig.rHP(3)),
                  child: Opacity(
                    opacity: 0.5,
                    child: Text("Select status"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: _appConfig.rWP(4)),
                  child: ButtonsWidget(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: _appConfig.rWP(6),
                      right: _appConfig.rWP(64),
                      top: _appConfig.rHP(1)),
                  child: Opacity(
                    opacity: 0.5,
                    child: Text("Rate Assignment"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: _appConfig.rWP(10)),
                  child: RateButton(),
                ),
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Teachers feedback",
                      focusedBorder: OutlineInputBorder(
                        // gapPadding: 3,
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: Colors.greenAccent,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        //gapPadding: 3,
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide:
                            BorderSide(color: Colors.pinkAccent, width: 2.0),
                      ),
                      hintText: 'Teachers feedback',
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 5,
                  child: Container(
                    height: _appConfig.rH(20),
                    width: _appConfig.rW(90),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: _appConfig.rWP(5.5),
                              //right: _appConfig.rWP(1),
                              top: _appConfig.rHP(1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Attach corrected Assignment",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20,fontFamily: 'BarlowSemiCondensed-Medium'),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(right: _appConfig.rWP(3.5)),
                                //TODO make it an iconbutton
                                child: SvgPicture.asset('assets/images/Attach_Icon.svg',width: 25,height: 25,),
                              ),
                            ],
                          ),
                        ),
                        Divider(thickness: 3,),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: _appConfig.rWP(42)),
                  child: Opacity(
                    opacity: 0.5,
                    child: Text(
                      "max upload size 500mb",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                SizedBox(
                  height: _appConfig.rH(6),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: _appConfig.rWP(24), bottom: _appConfig.rHP(1)),
                  child: SaveCancel(),
                ),
                SizedBox(
                  height: _appConfig.rH(4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
