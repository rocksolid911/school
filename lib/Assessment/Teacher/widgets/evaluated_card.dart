import 'package:flutter/material.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/providers/evedataprovider.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/screens/evaluateexam.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:gradientbutton/appconfig.dart';

import 'package:provider/provider.dart';

class EvalutaedCard extends StatefulWidget {
  const EvalutaedCard({Key key}) : super(key: key);

  @override
  _EvalutaedCardState createState() => _EvalutaedCardState();
}

class _EvalutaedCardState extends State<EvalutaedCard> {
  AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    EveDataProvider eveDataProvider = Provider.of<EveDataProvider>(context);
    _appConfig = AppConfig(context);
    return Column(
      children: [
        Expanded(
          child: Container(
            height:59.3.h,
            child:  ListView.builder(
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
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Container(
                              height:20.5.h,
                              width: 86.8.w,
                              child: Stack(
                                children: [
                              Padding(
                              padding: EdgeInsets.only(
                              top:1.8.h,
                                  left:4.w),
                                child: SvgPicture.asset(
                                  "assets/images/Subject_Icon_W.Name_Maths.svg",
                                  height: 5.h,
                                  width: 5.w,
                                )),



                                  //color: HexColor("#f55f5f"),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 3.5.h,
                                        left: 16.w),
                                    child: Text("maths",
                                        style: TextStyle( color: Color(0xFF2C2C2C),letterSpacing: 0.02,
                                            fontWeight: FontWeight.w600,fontFamily: "BarlowSemiCondensed-SemiBold,Barlow",
                                            fontSize: 13.3.sp)),
                                  ),

                                  Positioned(
                                    child: Container(height:3.6.h,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(this.context, MaterialPageRoute(builder: (context)=>EvExam()));
                                        },
                                        style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Color(0xFF4B71DB)),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(22.0),
                                          //side: BorderSide(color: Colors.red)
                                        ))),
                                        child: Text("View",style:  TextStyle( color: Colors.white,
                                            fontWeight: FontWeight.w600,fontFamily: "BarlowSemiCondensed-SemiBold,Barlow",
                                            fontSize: 10.sp),),
                                      ),
                                    ),
                                    right: 4.3.w,
                                    top: 2.3.h,
                                  ),
                                  Positioned(
                                    //child: Text("33/40"),
                                    child: GradientCircularProgressIndicator(
                                      gradient: Gradients.coralCandyGradient,
                                      radius: 85,
                                      value: 60,
                                    ),
                                    right: 2.w,
                                    top: 6.h,
                                  ),
                                  Positioned(
                                    left: _appConfig.rWP(70),
                                    child: Text(
                                      "60%",
                                      style: TextStyle(fontSize: 9.sp),
                                    ),
                                    right: _appConfig.rW(1),
                                    top: _appConfig.rH(10.6),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top:6.8.h,
                                    ),
                                    child: Divider(
                                      thickness: 0.5,
                                      endIndent: 17,
                                      indent: 17,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(

                                        top: 9.8.h,left: 5.w
                                    ),
                                    child: Row(
                                      children: [
                                        Text("Answering type",
                                            style: TextStyle(fontFamily: "BarlowSemiCondensed-Medium,Barlow",
                                                color: Color(0xFF757575),
                                                fontWeight:FontWeight.w500,
                                                fontSize: 10.sp)),

                                        //  color: Color(0xFF2E2E2E),
                                        Padding(
                                          padding: EdgeInsets.only(

                                            left: 2.w,
                                          ),
                                          child: Text(
                                              "Attach Pdf",
                                              style:  TextStyle(fontFamily: "BarlowSemiCondensed-SemiBold,Barlow",
                                                  color: Color(0xFF2E2E2E),
                                                  fontWeight:FontWeight.w600,
                                                  fontSize: 10.sp)),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 12.8.h,
                                      left: 5.w,
                                    ),
                                    child: Row(
                                      children: [
                                        Text("Exam Type",
                                            style: TextStyle(fontFamily: "BarlowSemiCondensed-Medium,Barlow",
                                                color: Color(0xFF757575),
                                                fontWeight:FontWeight.w500,
                                                fontSize: 10.sp)),
                                        Padding(
                                          padding: EdgeInsets.only(

                                              left:2.w
                                          ),
                                          child: Text(
                                              "Summative",
                                              style:  TextStyle(fontFamily: "BarlowSemiCondensed-SemiBold,Barlow",
                                                  color: Color(0xFF2E2E2E),
                                                  fontWeight:FontWeight.w600,
                                                  fontSize: 10.sp)),
                                        ),
                                      ],
                                    ),
                                  ),



                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 17.h,
                                      left:5.2.w,
                                    ),
                                    child: Row(
                                      children: [
                                        Text("Class",
                                            style:  TextStyle(fontFamily: "BarlowSemiCondensed-Medium,Barlow",
                                                color: Color(0xFF757575),
                                                fontWeight:FontWeight.w500,
                                                fontSize: 10.sp)),
                                        Padding(
                                          padding: EdgeInsets.only(

                                            left: 1.w,
                                          ),
                                          child: Text("10",
                                              style:  TextStyle(fontFamily: "BarlowSemiCondensed-SemiBold,Barlow",
                                                  color: Color(0xFF2E2E2E),
                                                  fontWeight:FontWeight.w600,
                                                  fontSize: 11.sp)),
                                        ),

                                        SizedBox(width: 1.w,),

                                        Text("Section",
                                            style: TextStyle(fontFamily: "BarlowSemiCondensed-Medium,Barlow",
                                                color: Color(0xFF757575),
                                                fontWeight:FontWeight.w500,
                                                fontSize: 10.sp)),
                                        SizedBox(width: 1.w,),
                                        Text("A",
                                            style:  TextStyle(fontFamily: "BarlowSemiCondensed-SemiBold,Barlow",
                                                color: Color(0xFF2E2E2E),
                                                fontWeight:FontWeight.w600,
                                                fontSize: 11.sp))

                                      ],
                                    ),
                                  ),


                                  Padding(
                                    padding: EdgeInsets.only(
                                        top:17.h,
                                        left:48.5.w),
                                    child: Row(
                                      children: [
                                        Text("Exam",
                                            style:  TextStyle(fontFamily: "BarlowSemiCondensed-Medium,Barlow",
                                                color: Color(0xFF757575),
                                                fontWeight:FontWeight.w500,
                                                fontSize: 10.sp)),
                                        SizedBox(width: 2.w),
                                        Text("21 Oct 2021",
                                            style:  TextStyle(fontFamily: "BarlowSemiCondensed-SemiBold,Barlow",
                                                color: Color(0xFF2E2E2E),
                                                fontWeight:FontWeight.w600,
                                                fontSize: 11.sp)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height:0.8.h,
                          ),
                        ],
                      ),
                    );
                  },
                ),

          ),
        ),
      ],
    );
  }
}
