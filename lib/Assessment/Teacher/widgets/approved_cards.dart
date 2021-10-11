import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:gradientbutton/appconfig.dart';

class Approvedcard extends StatefulWidget {
  @override
  _ApprovedcardState createState() => _ApprovedcardState();
}

class _ApprovedcardState extends State<Approvedcard> {
  AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return Stack(children: [
      Container(
        height: _appConfig.rH(59.3),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (builder, context) {
              return Container(
                child: Column(
                  children: [
                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                      child: Container(
                        height: _appConfig.rH(20.5),
                        width: _appConfig.rW(85.5),
                        child: Stack(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                                    top: _appConfig.rHP(1.8),
                                    left: _appConfig.rWP(4)),
                                child: SvgPicture.asset(
                                  "assets/images/Subject_Icon_W.Name_Maths.svg",
                                  height: _appConfig.rH(5),
                                  width: _appConfig.rW(5),
                                )), // color: HexColor("#f55f5f"),

                            Padding(
                              padding: EdgeInsets.only(
                                  top: _appConfig.rHP(3.5),
                                  left: _appConfig.rWP(16)),
                              child: Text("Mathematics",
                                  style: TextStyle( color: Color(0xFF666161),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 11)),
                            ),

                            Padding(
                              padding: EdgeInsets.only(
                                  top: _appConfig.rHP(7),
                                  bottom: _appConfig.rWP(5)),
                              child: Divider(
                                thickness: 0.5,
                                endIndent: 17,
                                indent: 17,
                                color: Colors.black,
                              ),
                            ),

                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: _appConfig.rHP(10),
                                      left: _appConfig.rWP(5),
                                      bottom: _appConfig.rWP(5)),
                                  child: Text("Timing",
                                      style:  TextStyle(
              color: Color(0xFF858383),
              fontWeight:FontWeight.w700,
              fontSize: 9)),
                                ),

                                //  color: Color(0xFF2E2E2E),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: _appConfig.rHP(10),
                                      left: _appConfig.rWP(12),
                                      bottom: _appConfig.rWP(5)),
                                  child: Text("2.30pm - 5.00pm",
                                      style: TextStyle(
                                          color: Color(0xFF2E2E2E),
                                          fontWeight: FontWeight.w900,
                                          fontSize: 9)),
                                ),
                              ],
                            ),

                            Padding(
                              padding: EdgeInsets.only(
                                  top: _appConfig.rHP(13),
                                  left: _appConfig.rWP(5),
                                  bottom: _appConfig.rWP(0)),
                              child: Row(
                                children: [
                                  Text("Exam Type",
                                      style:  TextStyle(
                                  color: Color(0xFF858383),
                                fontWeight:FontWeight.w700,
                                fontSize: 9)),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: _appConfig.rHP(0),
                                        left: _appConfig.rWP(6.7),
                                        bottom: _appConfig.rWP(0)),
                                    child: Text("Summative",
                                        style: TextStyle(
                                            color: Color(0xFF2E2E2E),
                                            fontWeight: FontWeight.w900,
                                            fontSize: 9)),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: _appConfig.rHP(18),
                                  left: _appConfig.rWP(5),
                                  bottom: _appConfig.rWP(0)),
                              child: Row(
                                children: [
                                  Text("Class",
                                      style:  TextStyle(
                                          color: Color(0xFF858383),
                                          fontWeight:FontWeight.w700,
                                          fontSize: 9)),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: _appConfig.rHP(0),
                                        left: _appConfig.rWP(1),
                                        bottom: _appConfig.rWP(0)),
                                    child: Text("10",
                                        style: TextStyle(
                                            color: Color(0xFF2E2E2E),
                                            fontWeight: FontWeight.w900,
                                            fontSize: 9)),
                                  ),
                                ],
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(
                                  top: _appConfig.rHP(18),
                                  left: _appConfig.rWP(57)),
                              child: Row(
                                children: [
                                  Text("Exam",
                                      style: TextStyle(
                                          color: Color(0xFF858383),
                                          fontWeight:FontWeight.w700,
                                          fontSize: 9)),
                                  SizedBox(width: _appConfig.rW(2)),
                                  Text("21 Oct 2020",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 9)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                  ],
                ),
              );
            }),
      ),
    ]);
  }
}
