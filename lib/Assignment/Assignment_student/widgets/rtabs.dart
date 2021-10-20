import 'package:flutter/material.dart';

class Rtabs extends StatefulWidget {
  final String status;
  final Color clr;
  const Rtabs({Key key, this.status, this.clr}) : super(key: key);

  @override
  _RtabsState createState() => _RtabsState();
}

class _RtabsState extends State<Rtabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      width: 80,
      child: new Tab(
        //text: 'hello'
        child: Column(
          children: [
            CircleAvatar(
              radius: 20,
              child: Text("4"),
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
  }
}
