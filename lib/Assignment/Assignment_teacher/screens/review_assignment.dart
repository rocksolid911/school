import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/rate_button.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/save_cancel_button.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/status_button.dart';
import 'package:phygitalz_project_1/config/app_config.dart';
import 'package:sizer/sizer.dart';

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
    double data = MediaQuery.of(context).devicePixelRatio;
    final scale = MediaQuery.of(context).textScaleFactor.clamp(1.0, 1.3);
    return Builder(
        builder: (context)
    {
      final mediaQueryData = MediaQuery.of(context);
      return MediaQuery(
        data:  mediaQueryData.copyWith(textScaleFactor: scale),
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text(" Review Assignment"),
              //centerTitle: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(3.h),
                ),
              ),
              //this section help to cut the bottom area
              // backgroundColor: Colors.pink,

              flexibleSpace: ClipRRect(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(3.h),
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
                child: Padding(
                  padding:  EdgeInsets.all(2.2.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/images/Zoology-(F).svg",
                            width: 15.h,
                            height: 15.w,
                          ),
                          SizedBox(width: 7.w,),
                          Text(
                            "Zoology",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'BarlowSemiCondensed-Medium'),
                          ),
                        ],
                      ),
                      SizedBox(height: 1.2.h,),
                      Text(
                        "complete the Exercise as given",
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontFamily: 'BarlowSemiCondensed-Medium'),
                      ),
                      SizedBox(height: 1.2.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Opacity(
                                opacity: 0.4,
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding:  EdgeInsets.only(right: 4.h),
                                    child: Text(
                                      "Name ",
                                      style: TextStyle(fontSize: 12.sp),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 1.5.h,),
                              Text(
                                "Vishall23",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontFamily: 'BarlowSemiCondensed-Medium',
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Opacity(
                                opacity: 0.4,
                                child: Text(
                                  "Submitted Date",
                                  style: TextStyle(fontSize: 12.sp),
                                ),
                              ),
                              SizedBox(height: 1.5.h,),
                              Padding(
                                padding:  EdgeInsets.only(right: 8.h),
                                child: Text(
                                  "21 Oct",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontFamily: 'BarlowSemiCondensed-Medium',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 1.2.h,),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.h)),
                        elevation: 5,
                        child: Container(
                          height: 20.h,
                          width: 100.w,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 1.h,
                                    right:11.h,
                                    top: 1.5.h,),
                                child: Text(
                                  "Submmited Assignment",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,
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
                      SizedBox(height: 2.2.h,),
                      Padding(
                        padding:  EdgeInsets.only(right: 26.h),
                        child: Opacity(
                          opacity: 0.5,
                          child: Text("Select status"),
                        ),
                      ),
                      SizedBox(height: 1.2.h,),
                      ButtonsWidget(),
                      SizedBox(height: 2.2.h,),
                      Padding(
                        padding:  EdgeInsets.only(right: 22.3.h),//TODO subject to change
                        child: Opacity(
                          opacity: 0.5,
                          child: Text("Rate Assignment"),
                        ),
                      ),
                      SizedBox(height: 1.2.h,),
                      RateButton(),
                      SizedBox(height: 2.2.h,),
                      TextField(
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
                      SizedBox(height: 2.2.h,),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.h)),
                        elevation: 5,
                        child: Container(
                          height: 20.h,
                          width: 100.w,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 1.h,
                                    //right: _appConfig.rWP(1),
                                    top: 1.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Text(
                                      "Attach corrected Assignment",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.sp,
                                          fontFamily: 'BarlowSemiCondensed-Medium'),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.only(right: _appConfig.rWP(3.5)),
                                      //TODO make it an iconbutton
                                      child: SvgPicture.asset(
                                        'assets/images/Attach_Icon.svg',
                                        width: 3.h, height: 3.h,),
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
                        height:6.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10.h, bottom: 1.h),
                        child: SaveCancel(),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                    ],
                  ),
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
