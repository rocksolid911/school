import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradientbutton/appconfig.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/corrected_card.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/notcorrected_card.dart';
import 'package:phygitalz_project_1/Common/widgets/bottomnav.dart';
import 'package:sizer/sizer.dart';

class EvExam extends StatefulWidget {
  const EvExam({Key key}) : super(key: key);

  @override
  _EvExamState createState() => _EvExamState();
}

class _EvExamState extends State<EvExam> with SingleTickerProviderStateMixin{
  TabController controller;
  AppConfig _appConfig;

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
    double data = MediaQuery.of(context).devicePixelRatio;
    final scale = MediaQuery.of(context).textScaleFactor.clamp(1.0, 1.3);
    _appConfig = AppConfig(context);
    return Builder(
        builder: (context) {
      final mediaQueryData = MediaQuery.of(context);
    return MediaQuery(
      data: mediaQueryData.copyWith(textScaleFactor: scale),
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: mYBottomNav(),
          appBar:PreferredSize(
            preferredSize: Size.fromHeight(26.5.h),
            child: Container(
              //color: Colors.green,
              child: Card(
                elevation: 5,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 10.h,
                      width: 100.w,
                      //color: Colors.pinkAccent,
                      decoration: BoxDecoration(
                         // color: Colors.pinkAccent,
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color(0xFFD73865),
                              Color(0xFFA40DAB),
                              Color(0xFF8A09B1),
                            ],
                          ),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 2.h, bottom: 4.h),
                            child: GestureDetector(
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 4.h,
                              ),
                              onTap: () {
                               Navigator.pop(context);
                              },
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(bottom: 4.h,right: 9.h),
                            child: Text(
                              "Evaluate Exam",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(bottom: 4.h,right: 2.h),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 4.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    PreferredSize(
                      preferredSize: new Size(200.0, 200.0),
                      child: new Container(
                        width: double.infinity,
                        child: new TabBar(
                          isScrollable: true,
                          indicatorColor: Colors.purple,
                          tabs: [
                          Container(
                            height: data >= 2.75 ? 13.h : 13.h,
                          child: new Tab(
                            //text: 'hello'
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 3.7.h,
                                  child: Text("4",style: TextStyle(fontSize: data >= 2.75 ? 22.sp : 18.sp),),
                                  backgroundColor: Colors.green,
                                ),
                                SizedBox(
                                  // height: _appConfig.rH(1),
                                  height:  data > 2.75 &&
                                      MediaQuery.of(context).size.height > 900
                                      ? 2.1.h
                                      :data>2.75
                                      ? 1.8.h
                                      : 2.1.h,
                                ),
                                Text(
                                  "Not Corrected",
                                  style: TextStyle(color: Colors.black, fontSize: 13.sp,fontFamily: 'BarlowSemiCondensed-Medium'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: data >= 2.75 ? 13.h : 13.h,
                          child: new Tab(
                            //text: 'hello'
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 3.7.h,
                                  child: Text("4",style: TextStyle(fontSize: data >= 2.75 ? 22.sp : 18.sp),),
                                  backgroundColor: Colors.deepOrangeAccent,
                                ),
                                SizedBox(
                                  // height: _appConfig.rH(1),
                                  height:  data > 2.75 &&
                                      MediaQuery.of(context).size.height > 900
                                      ? 2.1.h
                                      :data>2.75
                                      ? 1.8.h
                                      : 2.1.h,
                                ),
                                Text(
                                  "Corrected",
                                  style: TextStyle(color: Colors.black, fontSize: 13.sp,fontFamily: 'BarlowSemiCondensed-Medium'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: data >= 2.75 ? 13.h : 13.h,
                          child: new Tab(
                            //text: 'hello'
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 3.7.h,
                                  child: Text("7",style: TextStyle(fontSize: data >= 2.75 ? 22.sp : 18.sp),),
                                  backgroundColor: Colors.pinkAccent,
                                ),
                                SizedBox(
                                  height:  data > 2.75 &&
                                      MediaQuery.of(context).size.height > 900
                                      ? 2.1.h
                                      :data>2.75
                                      ? 1.8.h
                                      : 2.1.h,
                                ),
                                Text(
                                  "Not Turned",
                                  style: TextStyle(color: Colors.black, fontSize: 13.sp,fontFamily: 'BarlowSemiCondensed-Medium'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: data >= 2.75 ? 13.h : 13.h,
                          child: new Tab(
                            //text: 'hello'
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 3.7.h,
                                  child: Text("11",style: TextStyle(fontSize: data >= 2.75 ? 22.sp : 18.sp),),
                                  backgroundColor: Colors.brown,
                                ),
                                SizedBox(
                                  height:  data > 2.75 &&
                                      MediaQuery.of(context).size.height > 900
                                      ? 2.1.h
                                      :data>2.75
                                      ? 1.8.h
                                      : 2.1.h,
                                ),
                                Text(
                                  "Rejected",
                                  style: TextStyle(color: Colors.black, fontSize: 13.sp,fontFamily: 'BarlowSemiCondensed-Medium'),
                                ),
                              ],
                            ),
                          ),
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
        body: TabBarView(
          controller: controller,
          children: <Widget>[
            NotCorrected(),
            //Center(child: Text("Tab one")),

            //Center(child: Text("Tab two")),
            Corrected(),

            //Center(child: Text("Tab three")),
            //TODO values should change show create new card after json integration
            NotCorrected(),

            //Center(child: Text("Tab four")),
            //TODO values should change show create new card after json integration
            NotCorrected(),

          ],
        ),
        ),
      ),
    );
        },
    );
  }
}
