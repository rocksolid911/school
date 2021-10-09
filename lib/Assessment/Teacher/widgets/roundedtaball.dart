import 'package:flutter/material.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/models/allassjson.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/providers/alljsondataprovider.dart';
import 'package:provider/provider.dart';

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