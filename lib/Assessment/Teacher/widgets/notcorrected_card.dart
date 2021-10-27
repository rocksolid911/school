import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradientbutton/appconfig.dart';
import 'package:sizer/sizer.dart';
class NotCorrected extends StatefulWidget {
  NotCorrected({Key key}) : super(key: key);

  @override
  _NotCorrectedState createState() => _NotCorrectedState();
}

class _NotCorrectedState extends State<NotCorrected> {
  AppConfig _appConfig;

  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return Column(
      children: [
        SizedBox(
          height:18.h,
          child: Padding(
            padding:  EdgeInsets.all(1.5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Exam Type : Summative",
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: Color(0xFF2C2C2C),
                      letterSpacing: 0.02,
                      fontWeight: FontWeight.w600,
                      fontFamily: "BarlowSemiCondensed-SemiBold,Barlow"),
                ),
                Row(
                  children: [
                    Text(
                      "Class  ",
                      style:  TextStyle(
                          fontSize: 10.sp,
                          color: Color(0xFF757575),

                          fontWeight: FontWeight.w500,
                          fontFamily: "BarlowSemiCondensed-Medium,Barlow"),
                    ), Text(
                      "10   ",
                       style: TextStyle(
                            fontSize: 11.sp,
                            color: Color(0xFF2E2E2E),

                            fontWeight: FontWeight.w600,
                            fontFamily: "BarlowSemiCondensed-SemiBold,Barlow")
                    ),
                    Text(
                      "Section  ",
                      style: TextStyle(
                          fontSize: 10.sp,
                          color: Color(0xFF757575),

                          fontWeight: FontWeight.w500,
                          fontFamily: "BarlowSemiCondensed-Medium,Barlow"),
                    ),   Text(
                      "B   ",
                      style:TextStyle(
                          fontSize: 11.sp,
                          color: Color(0xFF2E2E2E),

                          fontWeight: FontWeight.w600,
                          fontFamily: "BarlowSemiCondensed-SemiBold,Barlow")
                    ),
                    Text(
                      "Subject  ",
                      style:TextStyle(
                          fontSize: 10.sp,
                          color: Color(0xFF757575),

                          fontWeight: FontWeight.w500,
                          fontFamily: "BarlowSemiCondensed-Medium,Barlow"),
                    ),

                    Text(
                      "Mathematics",
               style:     TextStyle(
                      fontSize: 11.sp,
                      color: Color(0xFF2E2E2E),

                      fontWeight: FontWeight.w600,
                      fontFamily: "BarlowSemiCondensed-SemiBold,Barlow"),
                    ),
                  ],
                ),



                Row(children: [
                  Text(
                    "Exam  ",
                    style:TextStyle(
                        fontSize: 10.sp,
                        color: Color(0xFF757575),

                        fontWeight: FontWeight.w500,
                        fontFamily: "BarlowSemiCondensed-Medium,Barlow"),
                  ),

                  Text(
                    "30 July 2021   ",
                    style:     TextStyle(
                        fontSize: 11.sp,
                        color: Color(0xFF2E2E2E),

                        fontWeight: FontWeight.w600,
                        fontFamily: "BarlowSemiCondensed-SemiBold,Barlow"),
                  ),

                  Text(
                    "Total Marks  ",
                    style:TextStyle(
                        fontSize: 10.sp,
                        color: Color(0xFF757575),

                        fontWeight: FontWeight.w500,
                        fontFamily: "BarlowSemiCondensed-Medium,Barlow"),
                  ),

                  Text(
                    "100",
                    style:     TextStyle(
                        fontSize: 11.sp,
                        color: Color(0xFF2E2E2E),

                        fontWeight: FontWeight.w600,
                        fontFamily: "BarlowSemiCondensed-SemiBold,Barlow"),
                  ),
                ],)

              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 59.3.h,
            // color: Colors.grey,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (builder, context) {
                return Column(
                  children: [
                    // Text("hello"),
                    SizedBox(
                      width: 90.w,
                      height: 8.h,
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 2.3.w),
                            child: RichText(text: TextSpan(text: "Roll no. ",style: TextStyle(
                                fontSize: 14.sp,
                                color: Color(0xFF757575),

                                fontWeight: FontWeight.w500,
                                fontFamily: "BarlowSemiCondensed-Medium,Barlow"),children: [
                                  TextSpan(text:"123",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Color(0xFF2C2C2C),
                                        letterSpacing: 0.02,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "BarlowSemiCondensed-SemiBold,Barlow"),)


                            ]),),


                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 0.8.h,)
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
