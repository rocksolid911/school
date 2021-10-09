import 'package:flutter/material.dart';
import 'package:gradientbutton/lineargradientbutton.dart';

class AtCard extends StatefulWidget {
  const AtCard({Key key}) : super(key: key);

  @override
  _AtCardState createState() => _AtCardState();
}

class _AtCardState extends State<AtCard> {
  bool present = false;
  bool absent= false;
  bool late = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        height: 50,
        width: 200,
        color: Colors.blue,
        child: Column(children: [
          Row(children: [
            CircleAvatar(),
            Column(children: [
              Text("Name"),
              Text("Time in , Time Out"),
            ],)
          ],),
          Row(children: [
            CustomAnimatedButton(
              text: "Present",
              selected: present,
              onTap: () {
                setState(() {
                   present = true;
                   absent= false;
                  late = false;
                });
              },
              height: 40,
              width: 60,
              startcolor: 0xFFD64575,
              midcolor: 0xFFD64570,
              endcolor: 0xFF8522A3,
              radius: 20,
              activecolor: Colors.white,
              inactivecolor: Color(0xFFD64570), fntsize: 12,
            ),
            CustomAnimatedButton(
              text: "Absent",
              selected: absent,
              onTap: () {
                setState(() {
                  present = false;
                  absent= true;
                  late = false;
                });
              },
              height: 40,
              width: 60,
              startcolor: 0xFFD64575,
              midcolor: 0xFFD64570,
              endcolor: 0xFF8522A3,
              radius: 20,
              activecolor: Colors.white,
              inactivecolor: Colors.pinkAccent, fntsize: 12,
            ),
            CustomAnimatedButton(
              text: "Late",
              selected: late,
              onTap: () {
                setState(() {
                  present = false;
                  absent= false;
                  late = true;
                });
              },
              height: 40,
              width: 60,
              startcolor: 0xFFD64575,
              midcolor: 0xFFD64570,
              endcolor: 0xFF8522A3,
              radius: 20,
              activecolor: Colors.white,
              inactivecolor: Color(0xFFD64570), fntsize: 12,
            ),
          ],)
        ],),
      ),
    );
  }
}
