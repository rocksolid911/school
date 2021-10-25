import 'package:flutter/material.dart';
import 'package:gradientbutton/appconfig.dart';
import 'package:gradientbutton/lineargradientbutton.dart';
import 'package:sizer/sizer.dart';

class SavePublishButton extends StatefulWidget {
  const SavePublishButton({Key key}) : super(key: key);

  @override
  _SavePublishButtonState createState() => _SavePublishButtonState();
}

class _SavePublishButtonState extends State<SavePublishButton> {
  AppConfig _appConfig;
  bool cancel = false;
  bool savedraft = false;
  bool publish= false;
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  //padding: EdgeInsets.zero,
                  child: CustomAnimatedButton(
                    height:5.h,
                    width: 24.w,
                    text: "Cancel",
                    startcolor: 0xFFDF003D,
                    midcolor: 0xFFDF0075,
                    endcolor: 0xFFDF00AD,
                    radius: _appConfig.rW(9),
                    activecolor: Colors.white,
                    inactivecolor: Colors.pinkAccent,
                    selected: cancel,
                    onTap: (){
                      setState(() {
                        cancel = true;
                        savedraft = false;
                        publish=false;

                      });
                    }, fntsize: 10.sp,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomAnimatedButton(
                    height: 5.h,
                    width: 24.w,
                    text: "Save",
                    selected: savedraft,
                    startcolor: 0xFFDF003D,
                    midcolor: 0xFFDF0075,
                    endcolor: 0xFFDF00AD,
                    radius: _appConfig.rW(9),
                    activecolor: Colors.white,
                    inactivecolor: Colors.pinkAccent,
                    onTap: (){
                      setState(() {
                        cancel =false;
                        savedraft = true;
                        publish=false;

                      });
                    }, fntsize: 10.sp,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomAnimatedButton(
                    height: 5.h,
                    width: 24.w,
                    text: "Publish",
                    selected: publish,
                    startcolor: 0xFFDF003D,
                    midcolor: 0xFFDF0075,
                    endcolor: 0xFFDF00AD,
                    radius: _appConfig.rW(9),
                    activecolor: Colors.white,
                    inactivecolor: Colors.pinkAccent,
                    onTap: (){
                      setState(() {
                        cancel =false;
                        savedraft = false;
                        publish=true;
                        Navigator.pop(context);
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
