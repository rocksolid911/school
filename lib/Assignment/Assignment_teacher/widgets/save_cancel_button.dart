import 'package:flutter/material.dart';
import 'package:gradientbutton/appconfig.dart';
import 'package:gradientbutton/lineargradientbutton.dart';
import 'package:sizer/sizer.dart';

class SaveCancel extends StatefulWidget {
  const SaveCancel({Key key}) : super(key: key);

  @override
  _SaveCancelState createState() => _SaveCancelState();
}

class _SaveCancelState extends State<SaveCancel> {
  AppConfig _appConfig;
  bool selectedButton10B = false;
  bool selectedButton10A = false;

  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return
      Container(
        // width: _appConfig.rWP(150),
        // height: _appConfig.rHP(40),
        child: Row(
          children: [
            Padding(
              padding:  EdgeInsets.all(1.h),
              //padding: EdgeInsets.zero,
              child: CustomAnimatedButton(
                height: 5.h,
                width: 22.w,
                text: "Cancel",
                startcolor: 0xFFDF003D,
                midcolor: 0xFFDF0075,
                endcolor: 0xFFDF00AD,
                radius: _appConfig.rW(9),
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
              padding:  EdgeInsets.all(1.h),
              child: CustomAnimatedButton(
                height: 5.h,
                width: 22.w,
                text: "Save",
                selected: selectedButton10A,
                startcolor: 0xFFDF003D,
                midcolor: 0xFFDF0075,
                endcolor: 0xFFDF00AD,
                radius: _appConfig.rW(9),
                activecolor: Colors.white,
                inactivecolor: Colors.pinkAccent,
                onTap: (){
                  setState(() {
                    selectedButton10B = false;
                    selectedButton10A = true;
                    Navigator.pop(context);

                  });
                }, fntsize: 10.sp,
              ),
            ),

            // ButtonAnimated(),
            // ButtonAnimated(),
          ],
        ),
      );

  }
}
