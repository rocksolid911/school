import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradientbutton/appconfig.dart';
import 'package:gradientbutton/lineargradientbutton.dart';
import 'package:sizer/sizer.dart';

class TypeAssButton extends StatefulWidget {
  const TypeAssButton({Key key}) : super(key: key);

  @override
  _TypeAssButtonState createState() => _TypeAssButtonState();
}

class _TypeAssButtonState extends State<TypeAssButton> {
  AppConfig _appConfig;
  bool homeworkbutton = false;
  bool labrecordButton = false;
  bool portfoliobutton = false;

  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return
      Container(
        // width: _appConfig.rWP(150),
        // height: _appConfig.rHP(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                CustomAnimatedButton(
                  height: 5.h,
                  width: 30.w,
                  text: "Home Work",
                  startcolor: 0xFFDF003D,
                  midcolor: 0xFFDF0075,
                  endcolor: 0xFFDF00AD,
                  radius: _appConfig.rW(5),
                  activecolor: Colors.white,
                  inactivecolor: Color(0xFFBA2F74),
                  selected: homeworkbutton,
                  onTap: (){
                    setState(() {
                      homeworkbutton = true;
                      labrecordButton = false;

                      portfoliobutton = false;
                    });
                  }, fntsize: 10.sp,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomAnimatedButton(
                    height: 5.h,
                    width: 30.w,
                    text: "Lab Record",
                    selected: labrecordButton,
                    startcolor: 0xFFDF003D,
                    midcolor: 0xFFDF0075,
                    endcolor: 0xFFDF00AD,
                    radius: _appConfig.rW(5),
                    activecolor: Colors.white,
                    inactivecolor: Color(0xFFBA2F74),
                    onTap: (){
                      setState(() {
                        homeworkbutton = false;
                        labrecordButton = true;

                        portfoliobutton = false;
                      });
                    }, fntsize: 10.sp,
                  ),
                ),
                Expanded(
                  child: CustomAnimatedButton(
                    height: 5.h,
                    width: 29.w,
                    text: "Portfolio",
                    selected: portfoliobutton,
                    startcolor: 0xFFDF003D,
                    midcolor: 0xFFDF0075,
                    endcolor: 0xFFDF00AD,
                    radius: _appConfig.rW(5),
                    activecolor: Colors.white,
                    inactivecolor: Color(0xFFBA2F74),
                    onTap: (){
                      setState(() {
                        homeworkbutton = false;
                        labrecordButton = false;

                        portfoliobutton = true;
                      });
                    }, fntsize: 10.sp,
                  ),
                ),

                // ButtonAnimated(),
                // ButtonAnimated(),
              ],
            ),
          ],
        ),
      );

  }
}
