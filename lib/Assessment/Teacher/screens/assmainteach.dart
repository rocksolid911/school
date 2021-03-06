
import 'package:flutter/material.dart';

import 'package:gradientbutton/appconfig.dart';
import 'package:gradientbutton/lineargradientbutton.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/approved_cards.dart';

import 'package:phygitalz_project_1/Assessment/Teacher/widgets/conducted.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/draft_cards.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/evaluated_card.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/rejected_cards.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/roundedtaball.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/submitted_cards.dart';

import 'package:phygitalz_project_1/Common/widgets/bottomnav.dart';
import 'package:phygitalz_project_1/Common/widgets/drawer.dart';
import 'package:sizer/sizer.dart';


class AssTeacher extends StatefulWidget {
  const AssTeacher({Key key}) : super(key: key);

  @override
  _AssTeacherState createState() => _AssTeacherState();
}

class _AssTeacherState extends State<AssTeacher>
    with SingleTickerProviderStateMixin {
  bool Classs = true;
  bool Periodic = false;
  bool Summative = false;

  bool term1 = true;
  bool term2 = false;
  bool term3 = false;
  TabController controller;
  AppConfig _appConfig;
  final GlobalKey<ScaffoldState> _drawerkey = GlobalKey();

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 7,
      vsync: this,
    );
  }

  //TODO implement dispose
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
          drawer: myDrawer(),
          bottomNavigationBar: mYBottomNav(),
          key: _drawerkey,
          appBar:PreferredSize(
           // preferredSize: Size.fromHeight(_appConfig.rH(37)),
            preferredSize:
            data >= 3.0 && MediaQuery.of(context).size.height >= 800
                ? Size.fromHeight(42.h)//galaxy s20
                : data > 3.0 && MediaQuery.of(context).size.height < 800?
            Size.fromHeight(41.7.h)/*galaxy s 8*/: Size.fromHeight(42.h),//medium phone,note 10
            child: Container(
              //color: Colors.green,
              child: new SafeArea(
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 10.h,
                        width: 100.h,
                        //color: Colors.pinkAccent,

                        decoration: BoxDecoration(
                          //  color: Colors.pinkAccent,
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
                              padding:  EdgeInsets.only(left: 0, bottom: 4.h),
                              child: GestureDetector(
                                child: Icon(
                                  Icons.sort,
                                  color: Colors.white,
                                  size: 6.h,
                                ),
                                onTap: () {
                                  _drawerkey.currentState.openDrawer();
                                },
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(bottom: 4.h,right: 9.h),
                              child: Text(
                                "Assessment",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
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
                                  size: 5.h,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //TODO space for filter buttons
                      SizedBox(
                        height: 14.h,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(

                                children: [
                                  SizedBox(width: _appConfig.rW(3),),

                                  CustomAnimatedButton(
                                    text: "Class",
                                    selected: Classs,
                                    onTap: (){
                                      setState(() {
                                        Classs = true;
                                        Periodic = false;
                                        Summative = false;
                                      });
                                    },
                                    height: _appConfig.rH(4.5),
                                    width: _appConfig.rW(27),
                                    startcolor: 0xFFD64575,
                                    midcolor: 0xFFD64570,
                                    endcolor: 0xFF8522A3,
                                    radius: 25,
                                    activecolor: Colors.white,
                                    inactivecolor: Color(0xFFD64570),
                                    fntsize: 12,
                                  ),        SizedBox(width: _appConfig.rW(3),),
                                  CustomAnimatedButton(
                                    text: "Periodic",
                                    selected: Periodic,
                                    onTap: (){
                                      setState(() {
                                        Classs = false;
                                        Periodic = true;
                                        Summative = false;
                                      });
                                    },
                                    height: _appConfig.rH(4.5),
                                    width: _appConfig.rW(27),
                                    startcolor: 0xFFD64575,
                                    midcolor: 0xFFD64570,
                                    endcolor: 0xFF8522A3,
                                    radius: 25,
                                    activecolor: Colors.white,
                                    inactivecolor: Color(0xFFD64570),
                                    fntsize: 12,
                                  ),        SizedBox(width: _appConfig.rW(3),),
                                  CustomAnimatedButton(
                                    text: "Summative",
                                    selected: Summative,
                                    onTap: (){
                                      setState(() {
                                        Classs = false;
                                        Periodic = false;
                                        Summative = true;
                                      });
                                    },
                                    height: _appConfig.rH(4.5),
                                    width: _appConfig.rW(27),
                                    startcolor: 0xFFD64575,
                                    midcolor: 0xFFD64570,
                                    endcolor: 0xFF8522A3,
                                    radius: 25,
                                    activecolor: Colors.white,
                                    inactivecolor: Color(0xFFD64570),
                                    fntsize: 12,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 8.0,right: 8.0,top: 8.0),
                              child: Row(

                                children: [        SizedBox(width: _appConfig.rW(3),),
                                  CustomAnimatedButton(
                                    text: "Term 1",
                                    selected: term1,
                                    onTap: (){
                                      setState(() {
                                        term1 = true;
                                        term2 = false;
                                        term3 = false;
                                      });
                                    },
                                    height: _appConfig.rH(4.5),
                                    width: _appConfig.rW(27),
                                    startcolor: 0xFFD64575,
                                    midcolor: 0xFFD64570,
                                    endcolor: 0xFF8522A3,
                                    radius: 25,
                                    activecolor: Colors.white,
                                    inactivecolor: Color(0xFFD64570),
                                    fntsize: 12,
                                  ),        SizedBox(width: _appConfig.rW(3),),
                                  CustomAnimatedButton(
                                    text: "Term 2",
                                    selected: term2,
                                    onTap: (){
                                      setState(() {
                                        term1 = false;
                                        term2 = true;
                                        term3 = false;
                                      });
                                    },
                                    height: _appConfig.rH(4.5),
                                    width: _appConfig.rW(27),
                                    startcolor: 0xFFD64575,
                                    midcolor: 0xFFD64570,
                                    endcolor: 0xFF8522A3,
                                    radius: 25,
                                    activecolor: Colors.white,
                                    inactivecolor: Color(0xFFD64570),
                                    fntsize: 12,
                                  ),        SizedBox(width: _appConfig.rW(3),),
                                  CustomAnimatedButton(
                                    text: "Term 3",
                                    selected: term3,
                                    onTap: (){
                                      setState(() {
                                        term1 = false;
                                        term2 = false;
                                        term3 = true;
                                      });
                                    },
                                    height: _appConfig.rH(4.5),
                                    width: _appConfig.rW(27),
                                    startcolor: 0xFFD64575,
                                    midcolor: 0xFFD64570,
                                    endcolor: 0xFF8522A3,
                                    radius: 25,
                                    activecolor: Colors.white,
                                    inactivecolor: Color(0xFFD64570),
                                    fntsize: 12,
                                  ),
                                ],
                              ),
                            ),
                          ],),
                      ),
                      Divider(thickness: 4,),
                      SizedBox(
                        height: _appConfig.rH(1),
                      ),
                      PreferredSize(
                        preferredSize: new Size(200.0, 200.0),
                        child: new Container(
                          width: double.infinity,
                          child: new TabBar(
                            isScrollable: true,
                            indicatorColor: Colors.purple,
                            tabs: [
                              RoundedTabAll(sel: chsTab(),stat: "Draft",clr: Colors.green,),
                              RoundedTabAll(sel: chsTab(),stat: "Submitted",clr: Colors.blue,),
                              RoundedTabAll(sel: chsTab(),stat: "Approved",clr: Colors.amber,),
                              RoundedTabAll(sel: chsTab(),stat: "Rejected",clr: Colors.deepOrangeAccent,),
                              RoundedTabAll(sel: chsTab(),stat: "Scheduled",clr: Colors.lightGreenAccent,),
                              RoundedTabAll(sel: chsTab(),stat: "Conducted",clr: Colors.greenAccent,),
                              RoundedTabAll(sel: chsTab(),stat: "Evaluated",clr: Colors.indigo,)
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
          ),


          body: TabBarView(
            controller: controller,
            children: <Widget>[
              //Center(child: Text("Tab one")),
              //Draftcard(),
              chooseTab(),
              //Center(child: Text("Tab two")),
              SubmittedCard(),
              //Center(child: Text("Tab three")),
              Approvedcard(),
              //Center(child: Text("Tab four")),
              RejectedCard(),
              // Center(child: Text("Tab five")),
              //TODO need to be modified
              Approvedcard(),
              ConductedView(),
              //Center(child: Text("Tab six")),
              //Center(child: Text("Tab seven")),
              EvalutaedCard(),
            ],
          ),
        ),
      ),
    );
        },
    );
  }
  chooseTab(){
    if(Classs&&term1){
      return Draftcard(type: "Class",term: "Term 1",);
    }else if(Classs&&term2){
      return Draftcard(type: "Class",term: "Term 2",);
    }else if(Classs&&term3){
      return Draftcard(type: "Class",term: "Term 3",);
    }else if(Periodic&&term1){
      return Draftcard(type: "Periodic",term: "Term 1",);
    }else if(Periodic&&term2){
      return Draftcard(type: "Periodic",term: "Term 2",);
    }else if(Periodic&&term3){
      return Draftcard(type: "Periodic",term: "Term 3",);
    }else if(Summative&&term1){
      return Draftcard(type: "Summative",term: "Term 1",);
    }else if(Summative&&term2){
      return Draftcard(type: "Summative",term: "Term 2",);
    }else
      return Draftcard(type: "Summative",term: "Term 3",);

  }
  int chsTab(){
    if(Classs&&term1){
      return 1;
    }else if(Classs&&term2){
      return 2;
    }else if(Classs&&term3){
      return 3;
    }else if(Periodic&&term1){
      return 4;
    }else if(Periodic&&term2){
      return 5;
    }else if(Periodic&&term3){
      return 6;
    }else if(Summative&&term1){
      return 7;
    }else if(Summative&&term2){
      return 8;
    }else
      return 9;
  }
}



