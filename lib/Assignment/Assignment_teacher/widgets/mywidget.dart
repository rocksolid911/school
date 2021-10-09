import 'package:flutter/material.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/models/datajson.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/providers/dataprovider.dart';
import 'package:phygitalz_project_1/Assignment/Assignment_teacher/providers/filterprovider.dart';
import 'package:provider/provider.dart';

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
    //TODO make it a switch statement for all tabs use

        return FutureBuilder<List<Assignment>>(
            future: provider.assignmentStatus(widget.status),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                list =  snapshot.data;
                return Container(
                  height: 70.0,
                  width: 80,
                  child: new Tab(
                    //text: 'hello'
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          child: Text("${list.length}"),
                          backgroundColor: widget.clr,
                        ),
                        SizedBox(
                          // height: _appConfig.rH(1),
                          height: 8,
                        ),
                        Text(
                          "${widget.status}",
                          style: TextStyle(color: Colors.black, fontSize: 14),
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