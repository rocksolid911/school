import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phygitalz_project_1/config/app_config.dart';
import 'package:sizer/sizer.dart';

class SubjectIcon extends StatelessWidget {
  const SubjectIcon({
    Key key,

    this.subject,
  })  :
        super(key: key);


  final String subject;
  @override
  Widget build(BuildContext context) {
    switch (subject) {
      case ("Computer Science"):
        return SvgPicture.asset(
          "assets/images/Subject_Icon_W.Name_ComputerScience.svg",
          height: 5.h,
          width: 5.h,
        );
        break;
      case ("Mathematics"):
        return SvgPicture.asset(
          "assets/images/Subject_Icon_W.Name_Maths.svg",
          height: 5.h,
          width: 5.h,
        );
      case ("Tamil"):
        return SvgPicture.asset(
          "assets/images/Subject_Icon_W.Name_Tamil.svg",
          height: 5.h,
          width: 5.h,
        );
        break;
      case ("physics"):
        return SvgPicture.asset(
          "assets/images/Subject_Icon_W.Name_Physics.svg",
          height: 5.h,
          width: 5.h,
        );
        break;
      case ("Biology"):
        return SvgPicture.asset(
          "assets/images/Subject_Icon_W.Name_Biology.svg",
          height: 5.h,
          width: 5.h,
        );
        break;
      case ("Chemistry"):
        return SvgPicture.asset(
          "assets/images/Subject_Icon_W.Name_Chemistry.svg",
          height: 5.h,
          width: 5.h,
        );
        break;
      case ("English"):
        return SvgPicture.asset(
          "assets/images/Subject_Icon_English.svg",
          height: 5.h,
          width: 5.h,
        );
        break;
      case ("Hindi"):
        return SvgPicture.asset(
          "assets/images/Subject_Icon_Hindi.svg",
          height: 5.h,
          width: 5.h,
        );
        break;
      case ("Sanskrit"):
        return SvgPicture.asset(
          "assets/images/Subject_Icon_Sanskrit.svg",
          height: 5.h,
          width: 5.h,
        );
        break;
      case ("Economics"):
        return SvgPicture.asset(
          "assets/images/Subject_Icon_Economics.svg",
          height: 5.h,
          width: 5.h,
        );
        break;
      case ("History"):
        return SvgPicture.asset(
          "assets/images/Subject_Icon_History.svg",
          height: 5.h,
          width: 5.h,
        );
        break;
      default:
        return CircleAvatar(radius: 15,backgroundColor: Colors.teal,);
    }
  }
}
