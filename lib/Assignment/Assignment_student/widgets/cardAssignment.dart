import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/subjecticon.dart';
import 'package:phygitalz_project_1/config/app_config.dart';

class ACard extends StatefulWidget {
  const ACard({Key key}) : super(key: key);

  @override
  _ACardState createState() => _ACardState();
}

class _ACardState extends State<ACard> {
  AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 8,
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
                  height: _appConfig.rH(17),
                  width: _appConfig.rW(86),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: _appConfig.rHP(1.8),
                            left: _appConfig.rWP(4)),
                        child: SubjectIcon(subject: "Mathematics",),
                      ), // color: HexColor("#f55f5f"),

                      Padding(
                        padding: EdgeInsets.only(
                            top: _appConfig.rHP(3.2),
                            left: _appConfig.rWP(18)),
                        child: Text(
                            "Mathematics",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 14)),
                      ),



                      Padding(
                        padding: EdgeInsets.only(
                            top: _appConfig.rHP(2.8),
                            left: _appConfig.rWP(62)),
                        child: GestureDetector(
                          child: SvgPicture.asset(
                            "assets/images/Preview_icon _Assignment.svg",
                            height: _appConfig.rH(2.5),
                            width: _appConfig.rW(2.5),
                          ),
                          onTap: () {
                            Navigator.pushNamed(
                                this.context, "/draft_view");
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: _appConfig.rHP(2.8),
                            left: _appConfig.rWP(75)),
                        child: SvgPicture.asset(
                          "assets/images/Delete Icon.svg",
                          height: _appConfig.rH(2.5),
                          width: _appConfig.rW(2.5),
                        ),
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

                      Padding(
                        padding: EdgeInsets.only(
                            top: _appConfig.rHP(9),
                            left: _appConfig.rWP(5),
                            bottom: _appConfig.rWP(5)),
                        child: Text(
                            "",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w900,
                                fontSize: 10.5)),
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                            top: _appConfig.rHP(14),
                            left: _appConfig.rHP(2.5)),
                        child: Text("Document Name.Pdf ",
                            style: TextStyle(
                                color: Colors.black, fontSize: 7.5)),
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                            left: _appConfig.rWP(59),
                            top: _appConfig.rHP(14)),
                        child: Row(
                          children: [
                            Text("Due ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 9,
                                    color: Colors.grey)),
                            Text("20 July 2020",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 9)),
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
    );
  }
}
