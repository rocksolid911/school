import 'package:flutter/material.dart';
import 'package:gradientbutton/appconfig.dart';
import 'package:gradientbutton/lineargradientbutton.dart';
import 'package:sizer/sizer.dart';

class ButtonsWidget extends StatefulWidget {
  const ButtonsWidget({Key key}) : super(key: key);

  @override
  _ButtonsWidgetState createState() => _ButtonsWidgetState();
}

class _ButtonsWidgetState extends State<ButtonsWidget> {
  AppConfig _appConfig;
  bool selectedButton10B = false;
  bool selectedButton10A = false;

  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return
      Row(
        children: [
          Padding(
            padding:  EdgeInsets.only(right: 1.h,top: 1.h,bottom: 1.h),
            //padding: EdgeInsets.zero,
            child: CustomAnimatedButton(
              height: 5.h,
              width: 28.w,
              text: "Accepted",
              startcolor: 0xFFDF003D,
              midcolor: 0xFFDF0075,
              endcolor: 0xFFDF00AD,
              radius: _appConfig.rW(5),
              activecolor: Colors.white,
              inactivecolor: Colors.pinkAccent,
              selected: selectedButton10B,
              onTap: (){
                setState(() {
                  selectedButton10B = true;
                  selectedButton10A = false;

                });
              }, fntsize: 10.sp,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomAnimatedButton(
              height: 5.h,
              width: 28.w,
              text: "Rejected",
              selected: selectedButton10A,
              startcolor: 0xFFDF003D,
              midcolor: 0xFFDF0075,
              endcolor: 0xFFDF00AD,
              radius: _appConfig.rW(5),
              activecolor: Colors.white,
              inactivecolor: Colors.pinkAccent,
              onTap: (){
                setState(() {
                  selectedButton10B = false;
                  selectedButton10A = true;

                });
              }, fntsize: 10.sp,
            ),
          ),

          // ButtonAnimated(),
          // ButtonAnimated(),
        ],
      );

  }
}
