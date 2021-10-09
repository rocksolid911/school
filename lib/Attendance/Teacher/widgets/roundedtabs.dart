import 'package:flutter/material.dart';

class RoundedTabAtT extends StatefulWidget {
  final String stat;
  const RoundedTabAtT({Key key, this.stat}) : super(key: key);

  @override
  _RoundedTabAtTState createState() => _RoundedTabAtTState();
}

class _RoundedTabAtTState extends State<RoundedTabAtT> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      child: new Tab(
        //text: 'hello'
        child: Column(
          children: [
            CircleAvatar(
              radius: 20,
              child: Text("22"),
            ),
            SizedBox(
              // height: _appConfig.rH(1),
              height: 8,
            ),
            Text(
              "${widget.stat}",
              style: TextStyle(
                  color: Colors.black, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
