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
          // height: 5.h,
          // width: 5.h,
        );
        break;
      case ("Mathematics"):
        return SvgPicture.asset(
          "assets/images/Subject_Icon_W.Name_Maths.svg",
          // height: 5.h,
          // width: 5.h,
        );
      case ("Tamil"):
        return SvgPicture.asset(
          "assets/images/Tamil_(F).svg",
          // height: 5.h,
          // width: 5.h,
        );
        break;
      case ("physics"):
        return SvgPicture.asset(
          "assets/images/Subject_Icon_W.Name_Physics.svg",
          // height: 5.h,
          // width: 5.h,
        );
        break;
      case ("Biology"):
        return SvgPicture.asset(
          "assets/images/Bilology_(F).svg",
          // height: 5.h,
          // width: 5.h,
        );
        break;
      case ("Chemistry"):
        return SvgPicture.asset(
          "assets/images/Chemistry_(F).svg",
          // height: 5.h,
          // width: 5.h,
        );
        break;
      case ("English"):
        return SvgPicture.asset(
          "assets/images/English_(F).svg",
          // height: 5.h,
          // width: 5.h,
        );
        break;
      case ("Hindi"):
        return SvgPicture.asset(
          "assets/images/Hindi(F).svg",
          // height: 5.h,
          // width: 5.h,
        );
        break;
      case ("Sanskrit"):
        return SvgPicture.asset(
          "assets/images/Sanskrit(F).svg",
          // height: 5.h,
          // width: 5.h,
        );
        break;
      case ("Economics"):
        return SvgPicture.asset(
          "assets/images/Economics_(F).svg",
          // height: 5.h,
          // width: 5.h,
        );
        break;
      case ("History"):
        return SvgPicture.asset(
          "assets/images/History_(F).svg",
          // height: 5.h,
          // width: 5.h,
        );
        break;
      default:
        return CircleAvatar(radius: 15,backgroundColor: Colors.teal,);
    }
  }
}
