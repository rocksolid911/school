import 'package:flutter/material.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/models/allassjson.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/providers/alljsondataprovider.dart';

import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class RoundedTabAll extends StatefulWidget {
  final int sel;
  final String stat;
  final Color clr;
  const RoundedTabAll({
    Key key, this.sel, this.stat, this.clr,

  }) : super(key: key);

  @override
  State<RoundedTabAll> createState() => _RoundedTabAllState();
}

class _RoundedTabAllState extends State<RoundedTabAll> {
  List<AllAssJson> list;
  @override
  Widget build(BuildContext context) {
    double data = MediaQuery.of(context).devicePixelRatio;
    AllAssProvider allAssProvider = Provider.of<AllAssProvider>(context);
    if(widget.sel==1){
      return FutureBuilder(
        future: allAssProvider.getByTypeTerm(
            type: "Class", term: "Term 1", stat:widget.stat),
        builder: (context, AsyncSnapshot<List<AllAssJson>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting ||
              snapshot.connectionState == ConnectionState.none ||
              snapshot.data == null) {
            return CircularProgressIndicator();
          } else {
            list = snapshot.data;
            //print("value:$list");
            return Container(
             // height: 70.0,
              height: data >= 2.75 ? 13.h : 13.h,
              child: new Tab(
                //text: 'hello'
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: widget.clr,
                      radius: 3.7.h,
                      child: Text("${list.length}",style: TextStyle(fontSize: data >= 2.75 ? 22.sp : 18.sp),),
                    ),
                    SizedBox(
                      // height: _appConfig.rH(1),
                     // height: 8,
                      height:  data > 2.75 &&
                          MediaQuery.of(context).size.height > 900
                          ? 2.1.h
                          :data>2.75
                          ? 1.8.h
                          : 2.1.h,
                    ),
                    Text(
                      "${widget.stat}",
                      style: TextStyle(color: Colors.black, fontSize: 13.sp),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      );
    }else if(widget.sel==2){
      return FutureBuilder(
        future: allAssProvider.getByTypeTerm(
            type: "Class", term: "Term 2", stat:widget.stat),
        builder: (context, AsyncSnapshot<List<AllAssJson>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting ||
              snapshot.connectionState == ConnectionState.none ||
              snapshot.data == null) {
            return CircularProgressIndicator();
          } else {
            list = snapshot.data;
            //print("value:$list");
            return Container(
              height: data >= 2.75 ? 13.h : 13.h,
              child: new Tab(
                //text: 'hello'
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: widget.clr,
                      radius: 3.7.h,
                      child: Text("${list.length}",style: TextStyle(fontSize: data >= 2.75 ? 22.sp : 18.sp),),
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
                      "${widget.stat}",
                      style: TextStyle(color: Colors.black, fontSize: 13.sp),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      );
    }else if(widget.sel==3){
      return FutureBuilder(
        future: allAssProvider.getByTypeTerm(
            type: "Class", term: "Term 3", stat:widget.stat),
        builder: (context, AsyncSnapshot<List<AllAssJson>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting ||
              snapshot.connectionState == ConnectionState.none ||
              snapshot.data == null) {
            return CircularProgressIndicator();
          } else {
            list = snapshot.data;
            //print("value:$list");
            return Container(
              height: data >= 2.75 ? 13.h : 13.h,
              child: new Tab(
                //text: 'hello'
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: widget.clr,
                      radius: 3.7.h,
                      child: Text("${list.length}",style: TextStyle(fontSize: data >= 2.75 ? 22.sp : 18.sp),),
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
                      "${widget.stat}",
                      style: TextStyle(color: Colors.black, fontSize: 13.sp),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      );
    }else if(widget.sel==4){
      return FutureBuilder(
        future: allAssProvider.getByTypeTerm(
            type: "Periodic", term: "Term 1", stat:widget.stat),
        builder: (context, AsyncSnapshot<List<AllAssJson>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting ||
              snapshot.connectionState == ConnectionState.none ||
              snapshot.data == null) {
            return CircularProgressIndicator();
          } else {
            list = snapshot.data;
           // print("value:$list");
            return Container(
              height: data >= 2.75 ? 13.h : 13.h,
              child: new Tab(
                //text: 'hello'
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: widget.clr,
                      radius: 3.7.h,
                      child: Text("${list.length}",style: TextStyle(fontSize: data >= 2.75 ? 22.sp : 18.sp),),
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
                      "${widget.stat}",
                      style: TextStyle(color: Colors.black, fontSize: 13.sp),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      );
    }else if(widget.sel==5){
      return FutureBuilder(
        future: allAssProvider.getByTypeTerm(
            type: "Periodic", term: "Term 2", stat:widget.stat),
        builder: (context, AsyncSnapshot<List<AllAssJson>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting ||
              snapshot.connectionState == ConnectionState.none ||
              snapshot.data == null) {
            return CircularProgressIndicator();
          } else {
            list = snapshot.data;
           // print("value:$list");
            return Container(
             // height: 70.0,
              height: data >= 2.75 ? 13.h : 13.h,
              child: new Tab(
                //text: 'hello'
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: widget.clr,
                      radius: 3.7.h,
                      child: Text("${list.length}",style: TextStyle(fontSize: data >= 2.75 ? 22.sp : 18.sp),),
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
                      "${widget.stat}",
                      style: TextStyle(color: Colors.black, fontSize: 13.sp),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      );
    }else if(widget.sel==6){
      return FutureBuilder(
        future: allAssProvider.getByTypeTerm(
            type: "Periodic", term: "Term 3", stat:widget.stat),
        builder: (context, AsyncSnapshot<List<AllAssJson>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting ||
              snapshot.connectionState == ConnectionState.none ||
              snapshot.data == null) {
            return CircularProgressIndicator();
          } else {
            list = snapshot.data;
            //print("value:$list");
            return Container(
             // height: 70.0,
              height: data >= 2.75 ? 13.h : 13.h,
              child: new Tab(
                //text: 'hello'
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: widget.clr,
                      radius: 3.7.h,
                      child: Text("${list.length}",style: TextStyle(fontSize: data >= 2.75 ? 22.sp : 18.sp),),
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
                      "${widget.stat}",
                      style: TextStyle(color: Colors.black, fontSize: 13.sp),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      );
    }else if(widget.sel==7){
      return FutureBuilder(
        future: allAssProvider.getByTypeTerm(
            type: "Summative", term: "Term 1", stat:widget.stat),
        builder: (context, AsyncSnapshot<List<AllAssJson>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting ||
              snapshot.connectionState == ConnectionState.none ||
              snapshot.data == null) {
            return CircularProgressIndicator();
          } else {
            list = snapshot.data;
           // print("value:$list");
            return Container(
             // height: 70.0,
              height: data >= 2.75 ? 13.h : 13.h,
              child: new Tab(
                //text: 'hello'
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: widget.clr,
                      radius: 3.7.h,
                      child: Text("${list.length}",style: TextStyle(fontSize: data >= 2.75 ? 22.sp : 18.sp),),
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
                      "${widget.stat}",
                      style: TextStyle(color: Colors.black, fontSize: 13.sp),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      );
    }else if(widget.sel==8){
      return FutureBuilder(
        future: allAssProvider.getByTypeTerm(
            type: "Summative", term: "Term 2", stat:widget.stat),
        builder: (context, AsyncSnapshot<List<AllAssJson>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting ||
              snapshot.connectionState == ConnectionState.none ||
              snapshot.data == null) {
            return CircularProgressIndicator();
          } else {
            list = snapshot.data;
            //print("value:$list");
            return Container(
              height: data >= 2.75 ? 13.h : 13.h,
              child: new Tab(
                //text: 'hello'
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: widget.clr,
                      radius: 3.7.h,
                      child: Text("${list.length}",style: TextStyle(fontSize: data >= 2.75 ? 22.sp : 18.sp),),
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
                      "${widget.stat}",
                      style: TextStyle(color: Colors.black, fontSize: 13.sp),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      );
    }else{
      return FutureBuilder(
        future: allAssProvider.getByTypeTerm(
            type: "Summative", term: "Term 3", stat:widget.stat),
        builder: (context, AsyncSnapshot<List<AllAssJson>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting ||
              snapshot.connectionState == ConnectionState.none ||
              snapshot.data == null) {
            return CircularProgressIndicator();
          } else {
            list = snapshot.data;
            //print("value:$list");
            return Container(
              height: data >= 2.75 ? 13.h : 13.h,
              child: new Tab(
                //text: 'hello'
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: widget.clr,
                      radius: 3.7.h,
                      child: Text("${list.length}",style: TextStyle(fontSize: data >= 2.75 ? 22.sp : 18.sp),),
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
                      "${widget.stat}",
                      style: TextStyle(color: Colors.black, fontSize: 13.sp),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      );

    }
  }
}
/*
 switch(widget.sel){
     case (1):
       return FutureBuilder(
         future: allAssProvider.getByTypeTerm(
             type: "Class", term: "Term 1", stat:widget.stat),
         builder: (context, AsyncSnapshot<List<AllAssJson>> snapshot) {
           if (snapshot.connectionState == ConnectionState.waiting ||
               snapshot.connectionState == ConnectionState.none ||
               snapshot.data == null) {
             return CircularProgressIndicator();
           } else {
             list = snapshot.data;
             print("value:$list");
             return Container(
               height: 70.0,
               child: new Tab(
                 //text: 'hello'
                 child: Column(
                   children: [
                     CircleAvatar(
                       radius: 20,
                       child: Text("${list.length}"),
                     ),
                     SizedBox(
                       // height: _appConfig.rH(1),
                       height: 8,
                     ),
                     Text(
                       "${widget.stat}",
                       style: TextStyle(color: Colors.black, fontSize: 14),
                     ),
                   ],
                 ),
               ),
             );
           }
         },
       );

     case 2:
       return FutureBuilder(
         future: allAssProvider.getByTypeTerm(
             type: "Class", term: "Term 2", stat:widget.stat),
         builder: (context, AsyncSnapshot<List<AllAssJson>> snapshot) {
           if (snapshot.connectionState == ConnectionState.waiting ||
               snapshot.connectionState == ConnectionState.none ||
               snapshot.data == null) {
             return CircularProgressIndicator();
           } else {
             list = snapshot.data;
             print("value:$list");
             return Container(
               height: 70.0,
               child: new Tab(
                 //text: 'hello'
                 child: Column(
                   children: [
                     CircleAvatar(
                       radius: 20,
                       child: Text("${list.length}"),
                     ),
                     SizedBox(
                       // height: _appConfig.rH(1),
                       height: 8,
                     ),
                     Text(
                       "${widget.stat}",
                       style: TextStyle(color: Colors.black, fontSize: 14),
                     ),
                   ],
                 ),
               ),
             );
           }
         },
       );

     case 3:
       return FutureBuilder(
         future: allAssProvider.getByTypeTerm(
             type: "Class", term: "Term 3", stat:widget.stat),
         builder: (context, AsyncSnapshot<List<AllAssJson>> snapshot) {
           if (snapshot.connectionState == ConnectionState.waiting ||
               snapshot.connectionState == ConnectionState.none ||
               snapshot.data == null) {
             return CircularProgressIndicator();
           } else {
             list = snapshot.data;
             print("value:$list");
             return Container(
               height: 70.0,
               child: new Tab(
                 //text: 'hello'
                 child: Column(
                   children: [
                     CircleAvatar(
                       radius: 20,
                       child: Text("${list.length}"),
                     ),
                     SizedBox(
                       // height: _appConfig.rH(1),
                       height: 8,
                     ),
                     Text(
                       "${widget.stat}",
                       style: TextStyle(color: Colors.black, fontSize: 14),
                     ),
                   ],
                 ),
               ),
             );
           }
         },
       );

     case 4:
       return FutureBuilder(
         future: allAssProvider.getByTypeTerm(
             type: "Periodic", term: "Term 1", stat:widget.stat),
         builder: (context, AsyncSnapshot<List<AllAssJson>> snapshot) {
           if (snapshot.connectionState == ConnectionState.waiting ||
               snapshot.connectionState == ConnectionState.none ||
               snapshot.data == null) {
             return CircularProgressIndicator();
           } else {
             list = snapshot.data;
             print("value:$list");
             return Container(
               height: 70.0,
               child: new Tab(
                 //text: 'hello'
                 child: Column(
                   children: [
                     CircleAvatar(
                       radius: 20,
                       child: Text("${list.length}"),
                     ),
                     SizedBox(
                       // height: _appConfig.rH(1),
                       height: 8,
                     ),
                     Text(
                       "${widget.stat}",
                       style: TextStyle(color: Colors.black, fontSize: 14),
                     ),
                   ],
                 ),
               ),
             );
           }
         },
       );

     case 5:
       return FutureBuilder(
         future: allAssProvider.getByTypeTerm(
             type: "Periodic", term: "Term 2", stat:widget.stat),
         builder: (context, AsyncSnapshot<List<AllAssJson>> snapshot) {
           if (snapshot.connectionState == ConnectionState.waiting ||
               snapshot.connectionState == ConnectionState.none ||
               snapshot.data == null) {
             return CircularProgressIndicator();
           } else {
             list = snapshot.data;
             print("value:$list");
             return Container(
               height: 70.0,
               child: new Tab(
                 //text: 'hello'
                 child: Column(
                   children: [
                     CircleAvatar(
                       radius: 20,
                       child: Text("${list.length}"),
                     ),
                     SizedBox(
                       // height: _appConfig.rH(1),
                       height: 8,
                     ),
                     Text(
                       "${widget.stat}",
                       style: TextStyle(color: Colors.black, fontSize: 14),
                     ),
                   ],
                 ),
               ),
             );
           }
         },
       );

     case 6:
       return FutureBuilder(
         future: allAssProvider.getByTypeTerm(
             type: "Periodic", term: "Term 3", stat:widget.stat),
         builder: (context, AsyncSnapshot<List<AllAssJson>> snapshot) {
           if (snapshot.connectionState == ConnectionState.waiting ||
               snapshot.connectionState == ConnectionState.none ||
               snapshot.data == null) {
             return CircularProgressIndicator();
           } else {
             list = snapshot.data;
             print("value:$list");
             return Container(
               height: 70.0,
               child: new Tab(
                 //text: 'hello'
                 child: Column(
                   children: [
                     CircleAvatar(
                       radius: 20,
                       child: Text("${list.length}"),
                     ),
                     SizedBox(
                       // height: _appConfig.rH(1),
                       height: 8,
                     ),
                     Text(
                       "${widget.stat}",
                       style: TextStyle(color: Colors.black, fontSize: 14),
                     ),
                   ],
                 ),
               ),
             );
           }
         },
       );

     case 7:
       return FutureBuilder(
         future: allAssProvider.getByTypeTerm(
             type: "Summative", term: "Term 1", stat:widget.stat),
         builder: (context, AsyncSnapshot<List<AllAssJson>> snapshot) {
           if (snapshot.connectionState == ConnectionState.waiting ||
               snapshot.connectionState == ConnectionState.none ||
               snapshot.data == null) {
             return CircularProgressIndicator();
           } else {
             list = snapshot.data;
             print("value:$list");
             return Container(
               height: 70.0,
               child: new Tab(
                 //text: 'hello'
                 child: Column(
                   children: [
                     CircleAvatar(
                       radius: 20,
                       child: Text("${list.length}"),
                     ),
                     SizedBox(
                       // height: _appConfig.rH(1),
                       height: 8,
                     ),
                     Text(
                       "${widget.stat}",
                       style: TextStyle(color: Colors.black, fontSize: 14),
                     ),
                   ],
                 ),
               ),
             );
           }
         },
       );

     case 8:
       return FutureBuilder(
         future: allAssProvider.getByTypeTerm(
             type: "Summative", term: "Term 2", stat:widget.stat),
         builder: (context, AsyncSnapshot<List<AllAssJson>> snapshot) {
           if (snapshot.connectionState == ConnectionState.waiting ||
               snapshot.connectionState == ConnectionState.none ||
               snapshot.data == null) {
             return CircularProgressIndicator();
           } else {
             list = snapshot.data;
             print("value:$list");
             return Container(
               height: 70.0,
               child: new Tab(
                 //text: 'hello'
                 child: Column(
                   children: [
                     CircleAvatar(
                       radius: 20,
                       child: Text("${list.length}"),
                     ),
                     SizedBox(
                       // height: _appConfig.rH(1),
                       height: 8,
                     ),
                     Text(
                       "${widget.stat}",
                       style: TextStyle(color: Colors.black, fontSize: 14),
                     ),
                   ],
                 ),
               ),
             );
           }
         },
       );

     case 9:
       return FutureBuilder(
         future: allAssProvider.getByTypeTerm(
             type: "Summative", term: "Term 3", stat:widget.stat),
         builder: (context, AsyncSnapshot<List<AllAssJson>> snapshot) {
           if (snapshot.connectionState == ConnectionState.waiting ||
               snapshot.connectionState == ConnectionState.none ||
               snapshot.data == null) {
             return CircularProgressIndicator();
           } else {
             list = snapshot.data;
             print("value:$list");
             return Container(
               height: 70.0,
               child: new Tab(
                 //text: 'hello'
                 child: Column(
                   children: [
                     CircleAvatar(
                       radius: 20,
                       child: Text("${list.length}"),
                     ),
                     SizedBox(
                       // height: _appConfig.rH(1),
                       height: 8,
                     ),
                     Text(
                       "${widget.stat}",
                       style: TextStyle(color: Colors.black, fontSize: 14),
                     ),
                   ],
                 ),
               ),
             );
           }
         },
       );

     default:
       return CircularProgressIndicator();
   }
*/