import 'package:flutter/material.dart';
import 'package:gradientbutton/appconfig.dart';
import 'package:intl/intl.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/Assignment_type_button.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/s_c_p_button.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/search_field.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/select_class_button.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/select_subject_button.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/search_field.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/widgets/selectdatecreate.dart';
import 'package:sizer/sizer.dart';
class CreateAssignment extends StatefulWidget {
  const CreateAssignment({Key key}) : super(key: key);

  @override
  _CreateAssignmentState createState() => _CreateAssignmentState();
}

class _CreateAssignmentState extends State<CreateAssignment> {


  AppConfig _appConfig;

  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Assignment Review"),
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          //this section help to cut the bottom area
          // backgroundColor: Colors.pink,

          flexibleSpace: ClipRRect(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color(0xFFDD3B64),
                      // Colors.blue,
                      Color(0xFFB017A5),
                      Color(0xFF7E17B0),
                    ]
                ),

                // image: DecorationImage(
                //   image: AssetImage(
                //       'assets/images/Union 1.jpg'),
                //   fit: BoxFit.fill,
                // ),
              ),
            ),
          ),
          actions: [], //to add gradient color to app bar
        ),
        body: Scrollbar(

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: _appConfig.rHP(4), left: _appConfig.rWP(5)),
                  child: Text("Assignment type", style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(_appConfig.rWP(3)),
                  child: TypeAssButton(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: _appConfig.rHP(1), left: _appConfig.rWP(5)),
                  child: Text("Select The class Section", style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(_appConfig.rWP(3)),
                  child: SectionButton(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: _appConfig.rHP(1), left: _appConfig.rWP(5)),
                  child: Text("Select Subject", style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(_appConfig.rWP(4)),
                  child: SubjectButton(),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SearchBar(dropdownitem: [
                    "Linear Algebra",
                    "Mensuration",
                    "Geometry",
                    "GraphTheoy"
                  ], labeltext: "Select Lesson",),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SearchBar(labeltext: "Select Topic",
                    dropdownitem: [
                      "Triangle",
                      "Circle",
                      "Co-ordinate Geometry",
                      "LPP"
                    ],),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: DateSelect(),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                      labelText: "Teachers feedback",
                      focusedBorder: OutlineInputBorder(
                        // gapPadding: 3,
                        borderRadius: BorderRadius.circular(45.0),
                        borderSide: BorderSide(
                          color: Colors.greenAccent,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        //gapPadding: 3,
                        borderRadius: BorderRadius.circular(45.0),
                        borderSide: BorderSide(color: Colors.pinkAccent,
                            width: 1.5),
                      ),
                      hintText: 'Teachers feedback',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 8,
                    child: Container(
                      height: _appConfig.rH(20),
                      width: _appConfig.rW(94),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: _appConfig.rWP(4),
                                //right: _appConfig.rWP(1),
                                top: _appConfig.rHP(1)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Attach corrected Assignment",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11.sp),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.only(right: _appConfig.rWP(2.5)),
                                  //TODO make it an iconbutton
                                  child: Icon(
                                    Icons.edit,
                                    color: Colors.pinkAccent,
                                    size: _appConfig.rH(4),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: _appConfig.rH(2),),
                Padding(
                  padding: EdgeInsets.only(left: 28.0),
                  child: SavePublishButton(),
                ),
                SizedBox(height: _appConfig.rH(2),),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
