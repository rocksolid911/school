import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradientbutton/appconfig.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/save_cancel_button.dart';

class DraftView extends StatefulWidget {
  const DraftView({Key key}) : super(key: key);

  @override
  _DraftViewState createState() => _DraftViewState();
}

class _DraftViewState extends State<DraftView> {
  AppConfig _appConfig;

  @override
  Widget build(BuildContext context) {
    double data = MediaQuery
        .of(context)
        .devicePixelRatio;
    final scale = MediaQuery
        .of(context)
        .textScaleFactor
        .clamp(1.0, 1.3);
    _appConfig = AppConfig(context);
    return Builder(
        builder: (context) {
          final mediaQueryData = MediaQuery.of(context);
          return MediaQuery(
            data: mediaQueryData.copyWith(textScaleFactor: scale),
            child: SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  title: Text("View Draft"),
                  //centerTitle: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(30),
                    ),
                  ),
                  //this section help to cut the bottom area
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
                            Color(0xFFDD3B64),
                            Color(0xFFB017A5),
                            Color(0xFF7E17B0),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: _appConfig.rWP(7),
                            top: _appConfig.rHP(2),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/images/Chemistry_(F).svg",
                                height: _appConfig.rH(12),
                                width: _appConfig.rW(12),
                              ),
                              SizedBox(width: 20,),
                              Text(
                                "Chemistry",
                                style: TextStyle(fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'BarlowSemiCondensed-Medium'),
                              ),
                            ],
                          ),
                        ),
                        // Padding(
                        //   padding: EdgeInsets.only(
                        //     left: _appConfig.rWP(13),
                        //     top: _appConfig.rHP(1),
                        //   ),
                        //   child: Text(
                        //     "Math",
                        //     style: TextStyle(fontSize: 24,
                        //         fontWeight: FontWeight.bold,
                        //         fontFamily: 'BarlowSemiCondensed-Medium'),
                        //   ),
                        // ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: _appConfig.rWP(6),
                            top: _appConfig.rHP(3),
                          ),
                          child: Opacity(opacity: 0.5, child: Text(
                              "Assignment Tittle")),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: _appConfig.rWP(6),
                            top: _appConfig.rHP(1),
                          ),
                          child: Text(
                            "complete the mensuration exercise from 5.1.1 to 5.1.2",
                            style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: 'BarlowSemiCondensed-Medium'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: _appConfig.rWP(4), top: _appConfig.rHP(2)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Opacity(
                                      opacity: 0.5, child: Text("Assign Date")),
                                  Padding(
                                    padding: EdgeInsets.only(left: 7.0),
                                    child: Text("21 Aug 2021", style: TextStyle(
                                        fontWeight: FontWeight.bold),),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 16.0),
                                child: Column(
                                  children: [
                                    Opacity(
                                        opacity: 0.5, child: Text("Due Date")),
                                    Padding(
                                      padding: EdgeInsets.only(left: 23.0),
                                      child: Text("21 Aug 2021",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: _appConfig.rWP(5), top: _appConfig.rHP(3)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Opacity(opacity: 0.5,
                                      child: Text("Class and Section")),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: _appConfig.rWP(22)),
                                    child: Text("10A", style: TextStyle(
                                        fontWeight: FontWeight.bold),),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 18.0),
                                child: Column(
                                  children: [
                                    Opacity(
                                        opacity: 0.5, child: Text("Lesson")),
                                    Padding(
                                      padding: EdgeInsets.only(left: 34.0),
                                      child: Text("Mensuration",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: _appConfig.rWP(5), top: _appConfig.rHP(4)),
                          child:
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    right: _appConfig.rWP(45)),
                                child: Opacity(
                                    opacity: 0.5, child: Text("Topic")),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: _appConfig.rWP(26)),
                                child: Text("5.1 mensuration", style: TextStyle(
                                    fontWeight: FontWeight.bold),),
                              )
                            ],
                          ),


                        ),
                        Padding(
                          padding: EdgeInsets.only(top: _appConfig.rHP(4),
                              left: _appConfig.rHP(2),
                              right: _appConfig.rHP(2)),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            elevation: 5,
                            child: Container(
                              height: _appConfig.rH(25),
                              width: _appConfig.rW(95),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: _appConfig.rWP(1),
                                        right: _appConfig.rWP(24),
                                        top: _appConfig.rHP(3)),
                                    child: Text(
                                      "Submmited Assignment",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          fontFamily: 'BarlowSemiCondensed-Medium'),
                                    ),
                                  ),
                                  Divider(thickness: 3,),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: _appConfig.rHP(13),
                            right: _appConfig.rHP(4),
                            top: _appConfig.rHP(4),),
                          child: SaveCancel(),
                        ),
                        SizedBox(height: _appConfig.rH(2),)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }
    );
  }
}