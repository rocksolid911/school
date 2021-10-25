import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/models/datajson.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/providers/dataprovider.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/subjecticon.dart';
import 'package:phygitalz_project_1/config/app_config.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class PendingCard extends StatefulWidget {
  final String type;
  final String stat;

  const PendingCard({Key key, this.type, this.stat}) : super(key: key);
  @override
  _PendingCardState createState() => _PendingCardState();
}

class _PendingCardState extends State<PendingCard> {
  AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    DataProvider provider = Provider.of<DataProvider>(context);
    _appConfig = AppConfig(context);
    return Container(
      height: 70.h,
      child: FutureBuilder(
        future: provider.bYStatAndType(type: widget.type, stat: widget.stat),
        builder: (context, AsyncSnapshot<List<Assignment>> projectSnap) {
          if (projectSnap.connectionState == ConnectionState.none ||
              projectSnap.hasData == null ||
              projectSnap.connectionState == ConnectionState.waiting) {
            // print('project snapshot data is: ${projectSnap.data}');
            return CircularProgressIndicator();
          }
          return ListView.builder(
            shrinkWrap: true,
            itemCount: projectSnap.data.length,
            itemBuilder: (builder, index) {
              // return Container(
              //   child: Column(
              //     children: [
              //       Card(
              //         elevation: 5,
              //         shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.only(
              //                 topLeft: Radius.circular(10),
              //                 topRight: Radius.circular(10),
              //                 bottomRight: Radius.circular(10))),
              //         child: Container(
              //           height: _appConfig.rH(19),
              //           width: _appConfig.rW(86),
              //           child: Stack(
              //             children: [
              //               Padding(
              //                 padding: EdgeInsets.only(
              //                     top: _appConfig.rHP(1.8),
              //                     left: _appConfig.rWP(4)),
              //                 child: SubjectIcon(subject: projectSnap.data[index].s40Subject,)
              //               ), // color: HexColor("#f55f5f"),
              //
              //               Padding(
              //                 padding: EdgeInsets.only(
              //                     top: _appConfig.rHP(3.2),
              //                     left: _appConfig.rWP(18)),
              //                 child: Text("${projectSnap.data[index].s40Subject}",
              //                     style: TextStyle(
              //                         fontWeight: FontWeight.w900,
              //                         fontSize: 14)),
              //               ),
              //               Padding(
              //                   padding: EdgeInsets.only(
              //                       top: _appConfig.rHP(2.8),
              //                       left: _appConfig.rWP(62)),
              //                   child: GestureDetector(
              //                     child: SvgPicture.asset(
              //                       "assets/images/Preview_icon _Assignment.svg",
              //                       height: _appConfig.rH(2.5),
              //                       width: _appConfig.rW(2.5),
              //                     ),
              //                     onTap: () {
              //                       Navigator.pushNamed(this.context,
              //                           "/assignment_teacher");
              //                     },
              //                   )),
              //               Padding(
              //                   padding: EdgeInsets.only(
              //                       top: _appConfig.rHP(2.8),
              //                       left: _appConfig.rWP(74)),
              //                   child: GestureDetector(
              //                     child: SvgPicture.asset(
              //                       "assets/images/Edit_Icon.svg",
              //                       height: _appConfig.rH(2.5),
              //                       width: _appConfig.rW(2.5),
              //                     ),
              //                     onTap: () {
              //                       Navigator.pushNamed(
              //                           this.context, "/create_assignment");
              //                     },
              //                   ),
              //               ),
              //
              //               // Padding(
              //               //     padding: EdgeInsets.only(
              //               //         top: _appConfig.rHP(2.8),
              //               //         left: _appConfig.rWP(75)),
              //               //     child: SvgPicture.asset(
              //               //       "assets/images/Delete Icon.svg",
              //               //       height: _appConfig.rH(2.5),
              //               //       width: _appConfig.rW(2.5),
              //               //     )),
              //
              //               Padding(
              //                 padding: EdgeInsets.only(
              //                     top: _appConfig.rHP(7),
              //                     bottom: _appConfig.rWP(5)),
              //                 child: Divider(
              //                   thickness: 0.5,
              //                   endIndent: 17,
              //                   indent: 17,
              //                   color: Colors.black,
              //                 ),
              //               ),
              //
              //               Padding(
              //                 padding: EdgeInsets.only(
              //                     top: _appConfig.rHP(9),
              //                     left: _appConfig.rWP(5),
              //                     bottom: _appConfig.rWP(5)),
              //                 child: Text(
              //                     "${projectSnap.data[index].s40AssignmentDetails}",
              //                     style: TextStyle(
              //                         color: Colors.black54,
              //                         fontWeight: FontWeight.w900,
              //                         fontSize: 14,
              //                     fontFamily: 'Barlow')),
              //               ),
              //               // Padding(
              //               //   padding: EdgeInsets.only(
              //               //       top: _appConfig.rHP(13.5),
              //               //       left: _appConfig.rWP(5.5),
              //               //       bottom: _appConfig.rWP(5)),
              //               //   child: Row(
              //               //     children: [
              //               //       Text("Attached Assignment Documents",
              //               //           style: TextStyle(
              //               //               color: Colors.black54,
              //               //               fontWeight: FontWeight.w900,
              //               //               fontSize: 10)),
              //               //     ],
              //               //   ),
              //               // ),
              //               // Padding(
              //               //   padding:  EdgeInsets.only(top: _appConfig.rHP(15.7),left: _appConfig.rHP(2.7)),
              //               //   //child: SvgPicture.asset("assets/documt.svg",height:_appConfig.rH(1.7),width: _appConfig.rW(2),),
              //               //   child:GestureDetector(child: Icon(Icons.delete),onTap: (){},),
              //               // ),
              //               Padding(
              //                 padding: EdgeInsets.only(
              //                     top: _appConfig.rHP(16),
              //                     left: _appConfig.rHP(2.5)),
              //                 child: Text("Document Name.Pdf ",
              //                     style: TextStyle(
              //                         color: Colors.black, fontSize: 12,fontFamily: 'Barlow')),
              //               ),
              //
              //               // Padding(
              //               //   padding: EdgeInsets.only(
              //               //       top: _appConfig.rHP(15.7),
              //               //       left: _appConfig.rHP(18.3)),
              //               //   child: SvgPicture.asset(
              //               //     "assets/images/Delete Icon.svg",
              //               //     height: _appConfig.rH(1.5),
              //               //     width: _appConfig.rW(1.5),
              //               //   ),
              //               // ),
              //
              //               Padding(
              //                 padding: EdgeInsets.only(
              //                     left: _appConfig.rWP(59),
              //                     top: _appConfig.rHP(16)),
              //                 child: Row(
              //                   children: [
              //                     Text("Due ",
              //                         style: TextStyle(
              //                             fontWeight: FontWeight.w900,
              //                             fontSize: 12,
              //                             color: Colors.grey,fontFamily: 'Barlow')),
              //                     Text("20 July 2020",
              //                         style: TextStyle(
              //                             fontWeight: FontWeight.w900,
              //                             fontSize: 12,fontFamily: 'Barlow')),
              //                   ],
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //       SizedBox(
              //         height: 6,
              //       ),
              //     ],
              //   ),
              // );
              return Container(
                child: Column(
                  children: [
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                      child: Container(
                        height: 24.h,
                        width: 93.w,
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 2.h, left: 2.5.h),
                              child: SubjectIcon(
                                subject: projectSnap.data[index].s40Subject,
                              ),
                            ), // color: HexColor("#f55f5f"),

                            Padding(
                              padding: EdgeInsets.only(top: 2.8.h, left: 9.h),
                              child: Text(
                                  "${projectSnap.data[index].s40Subject}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 12.sp)),
                            ),

                            Padding(
                              padding: EdgeInsets.only(top: 7.h, bottom: 2.h),
                              child: Divider(
                                thickness: 0.5,
                                endIndent: 17,
                                indent: 17,
                                color: Colors.black,
                              ),
                            ),
                            Positioned(
                              child: Container(
                                height: 5.h,
                                width: 24.w,
                                //color: Colors.blue,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      child: SvgPicture.asset(
                                        "assets/images/Edit_Icon.svg",
                                        // height: 2.5.h,
                                        // width: 3.h,
                                      ),
                                      onTap: () {
                                        Navigator.pushNamed(
                                            this.context, "/create_assignment");
                                      },
                                    ),
                                    GestureDetector(
                                      child: SvgPicture.asset(
                                        "assets/images/Preview_icon _Assignment.svg",
                                        // height: 2.5.h,
                                        // width: 3.h,
                                      ),
                                      onTap: () {
                                        Navigator.pushNamed(
                                            this.context, "/assignment_teacher");
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              top: 1.2.h,
                              right: 2.2.w,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 9.h, left: 3.h, bottom: 3.h),
                              child: Text(
                                  "${projectSnap.data[index].s40AssignmentDetails}",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 10.sp,
                                      fontFamily:
                                          'BarlowSemiCondensed-Medium')),
                            ),

                            // Padding(
                            //   padding: EdgeInsets.only(top: 19.h, left: 3.h),
                            //   child: Text("Document Name.Pdf ",
                            //       //"${MediaQuery.of(context).devicePixelRatio}",
                            //       style: TextStyle(
                            //           color: Colors.black,
                            //           fontSize: 12.sp,
                            //           fontFamily:
                            //               'BarlowSemiCondensed-Medium')),
                            // ),
                            //
                            // Padding(
                            //   padding: EdgeInsets.only(left: 28.h, top: 19.h),
                            //   child: Row(
                            //     children: [
                            //       Text("Due ",
                            //           style: TextStyle(
                            //               fontWeight: FontWeight.w900,
                            //               fontSize: 10.sp,
                            //               color: Colors.grey)),
                            //       Text("20 July 2020",
                            //           style: TextStyle(
                            //               fontWeight: FontWeight.w900,
                            //               fontSize: 12.sp)),
                            //     ],
                            //   ),
                            // ),
                            Positioned(
                              child: Container(
                                height: 3.h,
                                width: 80.w,
                                //color: Colors.blue,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                  Text("Document Name.Pdf ",
                                        //"${MediaQuery.of(context).devicePixelRatio}",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10.sp,
                                            fontFamily:
                                                'BarlowSemiCondensed-Medium'),
                                  ),
                                Row(
                                      children: [
                                        Text("Due ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 8.sp,
                                                color: Colors.grey)),
                                        Text("20 July 2020",
                                            textScaleFactor: 1.2,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 10.sp,

                                            )),
                                      ],
                                    ),
                                ],
                                ),
                              ),
                              top: 20.h,
                              left: 6.w,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
//
// child:
