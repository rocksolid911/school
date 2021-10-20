import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradientbutton/appconfig.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/corrected_card.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/notcorrected_card.dart';
import 'package:phygitalz_project_1/Common/widgets/bottomnav.dart';

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
    _appConfig = AppConfig(context);
    return Scaffold(

        bottomNavigationBar: mYBottomNav(),

      appBar:PreferredSize(
        preferredSize: Size.fromHeight(_appConfig.rH(23)),
        child: Container(
          //color: Colors.green,
          child: new SafeArea(
            child: Card(
              elevation: 5,
              child: Column(
                children: <Widget>[
                  Container(
                    height: _appConfig.rH(10),
                    width: _appConfig.rW(100),
                    //color: Colors.pinkAccent,
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: _appConfig.rWP(1),bottom: _appConfig.rHP(4)),
                          child: GestureDetector(
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onTap: () {
                             Navigator.pop(context);
                            },
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(bottom: _appConfig.rHP(4)),
                          child: Text(
                            "Evaluate Exam",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(bottom: _appConfig.rHP(4)),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),



                  SizedBox(
                    height: _appConfig.rH(2),
                  ),
                  PreferredSize(
                    preferredSize: new Size(200.0, 200.0),
                    child: new Container(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18.0,right: 18),
                        child: new TabBar(
                          isScrollable: true,
                          indicatorColor: Colors.purple,
                          tabs: [
                          Container(
                          height: 70.0,
                          child: new Tab(
                            //text: 'hello'
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  child: Text("4"),
                                  backgroundColor: Colors.green,
                                ),
                                SizedBox(
                                  // height: _appConfig.rH(1),
                                  height: 8,
                                ),
                                Text(
                                  "Not Corrected",
                                  style: TextStyle(color: Colors.black, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 70.0,
                          child: new Tab(
                            //text: 'hello'
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  child: Text("4"),
                                  backgroundColor: Colors.deepOrangeAccent,
                                ),
                                SizedBox(
                                  // height: _appConfig.rH(1),
                                  height: 8,
                                ),
                                Text(
                                  "Corrected",
                                  style: TextStyle(color: Colors.black, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 70.0,
                          child: new Tab(
                            //text: 'hello'
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  child: Text("7"),
                                  backgroundColor: Colors.pinkAccent,
                                ),
                                SizedBox(
                                  // height: _appConfig.rH(1),
                                  height: 8,
                                ),
                                Text(
                                  "Not Turned",
                                  style: TextStyle(color: Colors.black, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 70.0,
                          child: new Tab(
                            //text: 'hello'
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  child: Text("11"),
                                  backgroundColor: Colors.brown,
                                ),
                                SizedBox(
                                  // height: _appConfig.rH(1),
                                  height: 8,
                                ),
                                Text(
                                  "Rejected",
                                  style: TextStyle(color: Colors.black, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),

                          ],
                          controller: controller,
                        ),
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
    );
  }
}
// body: SafeArea(
//   child: NestedScrollView(
//     headerSliverBuilder:
//         (BuildContext context, bool innerBoxIsScrolled) {
//       return <Widget>[
//         SliverAppBar(
//           automaticallyImplyLeading: true,
//           actions: [
//             Padding(
//               padding: EdgeInsets.only(right: _appConfig.rWP(4)),
//               child: Icon(
//                 Icons.search,
//                 color: Colors.white,
//               ),
//             ),
//           ],
//           toolbarHeight: 50,
//           title: Text("Evaluate Exam "),
//           pinned: true,
//           snap: true,
//           floating: true,
//           //elevation: 15,
//           backgroundColor: Colors.pinkAccent,
//          // flexibleSpace: FlexibleSpaceBar(
//          //
//          //    background: SvgPicture.asset(
//          //      "assets/images/Timetable_Calendar_Card.svg",
//          //      fit: BoxFit.none,
//          //    ),
//          //  ),
//          //  shape: RoundedRectangleBorder(
//          //      borderRadius: BorderRadius.only(
//          //          bottomLeft: Radius.circular(30),
//          //          bottomRight: Radius.circular(30))),
//           collapsedHeight: 50,
//           expandedHeight: 160.0,
//           // expandedHeight: 220.0,
//           // **Is it intended ?** flexibleSpace.title overlaps with tabs title.
//           // flexibleSpace: FlexibleSpaceBar(
//           //   title: Text("FlexibleSpace title"),
//           // ),
//           bottom: PreferredSize(
//             preferredSize: Size(200,200),
//             child: Container(
//               color: Colors.greenAccent,
//               width: double.infinity,
//               child: TabBar(
//                 isScrollable: true,
//                 indicatorSize: TabBarIndicatorSize.label,
//                 indicatorWeight: 4,
//                 labelPadding: EdgeInsets.only(bottom: 8,left: 25,right: 10),
//                 indicator: UnderlineTabIndicator(
//                     borderSide: BorderSide(color: Colors.white),
//                     insets: EdgeInsets.only(bottom: 8,left: 4)),
//                 tabs: [
//                   Tab(
//                     child: Column(
//                       children: [
//                         Text(
//                           "03",
//                           style: TextStyle(color: Colors.white,fontSize: 18),
//                         ),
//
//                         Text(
//                           "Not Corrected",
//                           style: TextStyle(color: Colors.white, fontSize: 14),
//                         ),
//                       ],
//                     ),
//                     // text: "3",
//                     // child: Text("Draft"),
//                   ),
//
//                   Tab(
//                     child: Column(
//                       children: [
//                         Text(
//                           "04",
//                           style: TextStyle(color: Colors.white,fontSize: 18),
//                         ),
//
//                         Text(
//                           "Corrected",
//                           style: TextStyle(color: Colors.white, fontSize: 14),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Tab(
//                     child: Column(
//                       children: [
//                         Text(
//                           "08",
//                           style: TextStyle(color: Colors.white,fontSize: 18),
//                         ),
//
//                         Text(
//                           "Not Turnedin",
//                           style: TextStyle(color: Colors.white, fontSize: 14),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Tab(
//                     child: Column(
//                       children: [
//                         Text(
//                           "07",
//                           style: TextStyle(color: Colors.white,fontSize: 18),
//                         ),
//
//                         Text(
//                           "Rejected",
//                           style: TextStyle(color: Colors.white, fontSize: 14),
//                         ),
//                       ],
//                     ),
//                   ),
//
//                 ],
//                 controller: controller,
//
//               ),
//             ),
//           ),
//         ),
//         // SliverList(
//       ];
//     },
//     body: TabBarView(
//       controller: controller,
//       children: <Widget>[
//         NotCorrected(),
//         //Center(child: Text("Tab one")),
//
//         //Center(child: Text("Tab two")),
//         Corrected(),
//
//         //Center(child: Text("Tab three")),
//         //TODO values should change show create new card after json integration
//         NotCorrected(),
//
//         //Center(child: Text("Tab four")),
//         //TODO values should change show create new card after json integration
//         NotCorrected(),
//
//       ],
//     ),
//   ),
// ),