import 'package:flutter/material.dart';
import 'package:gradientbutton/appconfig.dart';
import 'package:gradientbutton/lineargradientbutton.dart';
import 'package:sizer/sizer.dart';

class RateButton extends StatefulWidget {
  const RateButton({Key key}) : super(key: key);

  @override
  _RateButtonState createState() => _RateButtonState();
}

class _RateButtonState extends State<RateButton> {
  AppConfig _appConfig;
  bool selectedButton10B = false;
  bool selectedButton10A = false;
  bool selectedButton9A = false;
  bool selectedButton9B = false;
  bool selectedButton9c = false;
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return
      Wrap(
        spacing: 4.5.h,
        runSpacing: 1.5.h,
        children: [
          CustomAnimatedButton(
            height: 4.5.h,
            width: 25.w,
            text: "Excellent",
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
                selectedButton9B = false;
                selectedButton9A = false;
                selectedButton9c = false;
              });
            }, fntsize: 10.sp,
          ),
          CustomAnimatedButton(
            height: 4.5.h,
            width: 25.w,
            text: "Very Good",
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
                selectedButton9B = false;
                selectedButton9A = false;
                selectedButton9c = false;
              });
            }, fntsize: 10.sp,
          ),
          CustomAnimatedButton(
            height: 4.5.h,
            width: 19.w,
            text: "Good",
            selected: selectedButton9A,
            startcolor: 0xFFDF003D,
            midcolor: 0xFFDF0075,
            endcolor: 0xFFDF00AD,
            radius: _appConfig.rW(5),
            activecolor: Colors.white,
            inactivecolor: Colors.pinkAccent,
            onTap: (){
              setState(() {
                selectedButton10B = false;
                selectedButton10A = false;
                selectedButton9B = false;
                selectedButton9A = true;
                selectedButton9c = false;
              });
            }, fntsize: 10.sp,
          ),
          CustomAnimatedButton(
            height: 4.5.h,
            width: 19.w,
            text: "poor",
            selected: selectedButton9B,
            startcolor: 0xFFDF003D,
            midcolor: 0xFFDF0075,
            endcolor: 0xFFDF00AD,
            radius: _appConfig.rW(5),
            activecolor: Colors.white,
            inactivecolor: Colors.pinkAccent,
            onTap: (){
              setState(() {
                selectedButton10B = false;
                selectedButton10A = false;
                selectedButton9B = true;
                selectedButton9A = false;
                selectedButton9c = false;
              });
            }, fntsize: 10.sp,
          ),
          CustomAnimatedButton(
            height: 4.5.h,
            width: 25.w,
            text: "Very poor",
            selected: selectedButton9c,
            startcolor: 0xFFDF003D,
            midcolor: 0xFFDF0075,
            endcolor: 0xFFDF00AD,
            radius: _appConfig.rW(5),
            activecolor: Colors.white,
            inactivecolor: Colors.pinkAccent,
            onTap: (){
              setState(() {
                selectedButton10B = false;
                selectedButton10A = false;
                selectedButton9B = false;
                selectedButton9A = false;
                selectedButton9c = true;
              });
            }, fntsize: 10.sp,
          ),
          // ButtonAnimated(),
          // ButtonAnimated(),
        ],
      );

  }
}
