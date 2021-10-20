import 'package:flutter/material.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/models/datajson.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/providers/dataprovider.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/providers/filterprovider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class MyWidget extends StatefulWidget {
  final String status;
  final Color clr;
  const MyWidget({Key key, this.status, this.clr}) : super(key: key);
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> with SingleTickerProviderStateMixin{
  List<Assignment> list ;



  @override
  Widget build(context) {
    DataProvider provider = Provider.of<DataProvider>(context);
  //  FilterProvider filterProvider = Provider.of<FilterProvider>(context);
    double  data = MediaQuery.of(context).devicePixelRatio;
    //TODO make it a switch statement for all tabs use

        return FutureBuilder<List<Assignment>>(
            future: provider.assignmentStatus(widget.status),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                list =  snapshot.data;
                return Container(
                 // height: 12.5.h,
                  height: data>=2.75?12.5.h:14.h,
                  width: 13.h,
                  child: new Tab(
                    //text: 'hello'
                    child: Column(
                      children: [
                        CircleAvatar(
                          //radius: data>=2.75?40:30,
                          radius:30,
                          child: Text("${list.length}",style: TextStyle(fontSize:  data>=2.75?22.sp:18.sp),),
                          backgroundColor: widget.clr,
                        ),
                        SizedBox(
                          // height: _appConfig.rH(1),
                          height: data>=2.75?1.2.h:2.h,
                        ),
                        Text(
                          "${widget.status}",
                          style: TextStyle(color: Colors.black, fontSize: 13.sp),
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                );



              } else{
                return CircularProgressIndicator();
              }
            }
        );



  }
}

/*
* Tab(
                    child: Column(
                      children: [
                        Text(
                          "${list.length}",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          // height: _appConfig.rH(1),
                          height: 8,
                        ),
                        Text(
                          "${widget.status}",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                  );
* */