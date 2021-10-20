import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/models/datajson.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/providers/dataprovider.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/subjecticon.dart';

import 'package:phygitalz_project_1/config/app_config.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class SubmitCard extends StatefulWidget {
  final String type;
  final String stat;

  const SubmitCard({Key key, this.type, this.stat}) : super(key: key);
  @override
  _SubmitCardState createState() => _SubmitCardState();
}

class _SubmitCardState extends State<SubmitCard> {
  AppConfig _appConfig;

  @override
  Widget build(BuildContext context) {
    DataProvider provider = Provider.of<DataProvider>(context);

    _appConfig = AppConfig(context);
    return Container(
      // height: _appConfig.rH(70),
      child: FutureBuilder(
        future: provider.bYStatAndType(type: widget.type, stat: widget.stat),
        builder: (context, AsyncSnapshot<List<Assignment>> projectSnap) {
          if (projectSnap.connectionState == ConnectionState.none ||
              projectSnap.hasData == null ||
              projectSnap.connectionState == ConnectionState.waiting) {
            // print('project snapshot data is: ${projectSnap.data}');
            return CircularProgressIndicator();
          }
          // return ListView.builder(
          //   itemCount: projectSnap.data.length,
          //   itemBuilder: (context, index) {
          //     // = projectSnap.data[index];
          //     return Column(
          //       children: <Widget>[
          //         // Widget to display the list of project
          //       ],
          //     );
          //   },
          // );
          return ListView.builder(
            shrinkWrap: true,
            itemCount: projectSnap.data.length,
            // itemCount: 2,
            itemBuilder: (builder, index) {
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
                        height: projectSnap
                                    .data[index].s40AssignmentDetails.length >
                                150
                            ? 35.h
                            : projectSnap.data[index].s40AssignmentDetails
                                        .length >
                                    100
                                ? 28.h
                                : 24.h,
                        width: 90.w,
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
                                      fontSize: 14.sp)),
                            ),

                            Padding(
                              padding: EdgeInsets.only(top: 2.8.h, left: 32.h),
                              child: GestureDetector(
                                child: SvgPicture.asset(
                                  "assets/images/Edit_Icon.svg",
                                  height: 2.5.h,
                                  width: 3.h,
                                ),
                                onTap: () {
                                  Navigator.pushNamed(
                                      this.context, "/create_assignment");
                                },
                              ),
                            ),

                            Padding(
                              padding:
                                  EdgeInsets.only(top: 2.9.h, left: 36.5.h),
                              child: GestureDetector(
                                child: SvgPicture.asset(
                                  "assets/images/Preview_icon _Assignment.svg",
                                  height: 2.5.h,
                                  width: 3.h,
                                ),
                                onTap: () {
                                  Navigator.pushNamed(
                                      this.context, "/draft_view");
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2.9.h, left: 42.h),
                              child: SvgPicture.asset(
                                "assets/images/Delete Icon.svg",
                                height: 2.5.h,
                                width: 3.h,
                              ),
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

                            Padding(
                              padding: EdgeInsets.only(
                                  top: 9.h, left: 3.h, bottom: 3.h),
                              child: Text(
                                  "${projectSnap.data[index].s40AssignmentDetails}",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 12.sp,
                                      fontFamily:
                                          'BarlowSemiCondensed-Medium')),
                            ),

                            Padding(
                              padding: EdgeInsets.only(
                                top: projectSnap.data[index]
                                            .s40AssignmentDetails.length >
                                        150
                                    ? 28.h
                                    : projectSnap.data[index]
                                                .s40AssignmentDetails.length >
                                            100
                                        ? 22.h
                                        : 19.h,
                                left: 3.h,
                              ),
                              child: Text(
                                  "Document Name.Pdf ",
                                  //"${1.2.h}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.sp,
                                      fontFamily:
                                          'BarlowSemiCondensed-Medium')),
                            ),

                            Padding(
                              padding: EdgeInsets.only(
                                left: 28.h,
                                top: projectSnap.data[index]
                                            .s40AssignmentDetails.length >
                                        150
                                    ? 28.h
                                    : projectSnap.data[index]
                                                .s40AssignmentDetails.length >
                                            100
                                        ? 22.h
                                        : 19.h,
                              ),
                              child: Row(
                                children: [
                                  Text("Due ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 10.sp,
                                          color: Colors.grey)),
                                  Text("20 July 2020",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 12.sp)),
                                ],
                              ),
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
