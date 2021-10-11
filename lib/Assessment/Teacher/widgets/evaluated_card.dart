import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:gradientbutton/appconfig.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/providers/evedataprovider.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/screens/evaluateexam.dart';

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
            height: _appConfig.rH(59.3),
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
                              height: _appConfig.rH(20.5),
                              width: _appConfig.rW(85.5),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: _appConfig.rHP(1.8),
                                        left: _appConfig.rWP(4)),
                                    child: SvgPicture.asset(
                                      "assets/images/Subject_Icon_W.Name_Tamil.svg",
                                      height: _appConfig.rH(5),
                                      width: _appConfig.rW(5),
                                    ),
                                  ), // color: HexColor("#f55f5f"),

                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: _appConfig.rHP(3.5),
                                        left: _appConfig.rWP(15.5)),
                                    child: Text("Tamil",
                                        style: TextStyle( color: Color(0xFF666161),
                                            fontWeight: FontWeight.w900,
                                            fontSize: 11)),
                                  ),
                                  Positioned(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(this.context, MaterialPageRoute(builder: (context)=>EvExam()));
                                      },
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(22.0),
                                        //side: BorderSide(color: Colors.red)
                                      ))),
                                      child: Text("View"),
                                    ),
                                    right: _appConfig.rW(5),
                                    top: _appConfig.rH(0.5),
                                  ),
                                  Positioned(
                                    //child: Text("33/40"),
                                    child: GradientCircularProgressIndicator(
                                      gradient: Gradients.coralCandyGradient,
                                      radius: 85,
                                      value: 60,
                                    ),
                                    right: _appConfig.rW(2),
                                    top: _appConfig.rH(6),
                                  ),
                                  Positioned(
                                    //child: Text("33/40"),
                                    child: Text(
                                      "60%",
                                      style: TextStyle(fontSize: 11),
                                    ),
                                    right: _appConfig.rW(12.5),
                                    top: _appConfig.rH(11),
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
                                          child: Text(
                                              "Answering Type",
                                              style:  TextStyle(
                                                  color: Color(0xFF858383),
                                                  fontWeight:FontWeight.w700,
                                                  fontSize: 9))),

                                      //  color: Color(0xFF2E2E2E),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: _appConfig.rHP(10),
                                            left: _appConfig.rWP(2),
                                            bottom: _appConfig.rWP(5)),
                                        child: Text(
                                            "Attach Pdf",
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
                                              left: _appConfig.rWP(3),
                                              bottom: _appConfig.rWP(0)),
                                          child: Text("Summative",
                                              style: TextStyle(  color: Color(0xFF2E2E2E),
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
                                        left: _appConfig.rWP(17.5),
                                        bottom: _appConfig.rWP(0)),
                                    child: Row(
                                      children: [
                                        Text("Section",
                                            style:  TextStyle(
                                                color: Color(0xFF858383),
                                                fontWeight:FontWeight.w700,
                                                fontSize: 9)),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: _appConfig.rHP(0),
                                              left: _appConfig.rWP(1),
                                              bottom: _appConfig.rWP(0)),
                                          child: Text("A",
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
                                        left: _appConfig.rWP(54)),
                                    child: Row(
                                      children: [
                                        Text("Exam ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 9.5,
                                              color: Color(0xFF858383),)),
                                        SizedBox(width: _appConfig.rW(2),),
                                        Text("21 Oct 2020",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 9.5)),
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
                  },
                ),

          ),
        ),
      ],
    );
  }
}
