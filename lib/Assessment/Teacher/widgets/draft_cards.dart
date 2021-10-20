import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/models/allassjson.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/providers/alljsondataprovider.dart';
import 'package:sizer/sizer.dart';
import 'package:gradientbutton/appconfig.dart';

import 'package:provider/provider.dart';
class Draftcard extends StatefulWidget {
  final String type;
  final String term;
  final String stat = "Draft";

  const Draftcard({Key key, this.type, this.term, }) : super(key: key);
  @override
  _DraftcardState createState() => _DraftcardState();
}

class _DraftcardState extends State<Draftcard> {
  List<AllAssJson> list;
  AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    AllAssProvider allAssProvider = Provider.of<AllAssProvider>(context);
    _appConfig = AppConfig(context);
    return Stack(
      children: [
        Container(
          height:59.3.h,
          child: FutureBuilder(
            future: allAssProvider.getByTypeTerm(type: widget.type,term: widget.term,stat: widget.stat),
            builder: (context, AsyncSnapshot<List<AllAssJson>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting ||
                  snapshot.connectionState == ConnectionState.none ||
                  snapshot.data == null)
                return Center(child: CircularProgressIndicator());
              else
              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data.length,
                  itemBuilder: (builder, index) {
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
                                      )), // color: HexColor("#f55f5f"),

                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 3.5.h,
                                        left: 16.w),
                                    child: Text("maths",
                                        style: TextStyle( color: Color(0xFF2C2C2C),letterSpacing: 0.02,
                                            fontWeight: FontWeight.w600,fontFamily: "BarlowSemiCondensed-SemiBold,Barlow",
                                            fontSize: 13.3.sp)),
                                  ),

                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 3.5.h,
                                          left: 66.2.w),
                                      child: SvgPicture.asset(
                                          "assets/images/Preview_icon _Assignment.svg")),

                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 3.h,
                                          left:77.w),
                                      child: SvgPicture.asset(
                                        "assets/images/Delete Icon.svg",
                                        height: 3.h,
                                        width:3.w,
                                      )),

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
                                        Text("Assignment Name",
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
                                              "Unit 1",
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
                                        Text("Answering Type",
                                            style: TextStyle(fontFamily: "BarlowSemiCondensed-Medium,Barlow",
                                                color: Color(0xFF757575),
                                                fontWeight:FontWeight.w500,
                                                fontSize: 10.sp)),
                                        Padding(
                                          padding: EdgeInsets.only(

                                              left:6.4.w
                                      ),
                                          child: Text(
                                              "Answering type",
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
                                        left: 5.2.w,
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
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(
                                        top:17.h,
                                        left: 40.4.w),
                                    child: Row(
                                      children: [
                                        Text("Exam Type",
                                            style:  TextStyle(fontFamily: "BarlowSemiCondensed-Medium,Barlow",
                                                color: Color(0xFF757575),
                                                fontWeight:FontWeight.w500,
                                                fontSize: 10.sp)),
                                        SizedBox(width: 2.w),
                                        Text("Summative",
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
                  });

            },
          ),
        ),
      ],
    );
  }
}
