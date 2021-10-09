import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradientbutton/lineargradientbutton.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/draft_cards.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/roundedtaball.dart';
import 'package:phygitalz_project_1/config/app_config.dart';

class ButtonProvider with ChangeNotifier {
  static bool _classs =false;

  static set classs(bool value) {
    _classs = value;
  }
  static set periodic(bool value) {
    _periodic= value;
  }
  static set summative(bool value) {
    _summative= value;
  }
  static bool _periodic = false;
  static bool _summative = false;

  static bool _term1 = false;
  static bool _term2 = false;
  static bool _term3 = false;



  static bool get classs => _classs;

  static bool get periodic => _periodic;

  static bool get summative => _summative;

  static bool get term1 => _term1;

  static bool get term2 => _term2;

  static bool get term3 => _term3;

 // static AppConfig get appConfig => _appConfig;

  Widget buttonwidget(BuildContext context) {
 AppConfig _appConfig = AppConfig(context);
    return SizedBox(
      height: _appConfig.rH(17),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomAnimatedButton(
                  text: "Class",
                  selected: _classs,
                  onTap: () {
                   _classs = true;
                   //  ButtonProvider.classs=true;
                   //  ButtonProvider.periodic=false;
                   //  ButtonProvider.summative=false;

                    _periodic = false;
                    _summative = false;
                    notifyListeners();
                  },
                  height: _appConfig.rH(5),
                  width: _appConfig.rW(25),
                  startcolor: 0xFFD64575,
                  midcolor: 0xFFD64570,
                  endcolor: 0xFF8522A3,
                  radius: 25,
                  activecolor: Colors.white,
                  inactivecolor: Color(0xFFD64570),
                  fntsize: 12,
                ),
                CustomAnimatedButton(
                  text: "Periodic",
                  selected: _periodic,
                  onTap: () {

                    // ButtonProvider.classs=false;
                    // ButtonProvider.periodic=true;
                    // ButtonProvider.summative=false;

                    _classs = false;
                    _periodic = true;
                    _summative = false;
                    notifyListeners();
                  },
                  height: _appConfig.rH(5),
                  width: _appConfig.rW(25),
                  startcolor: 0xFFD64575,
                  midcolor: 0xFFD64570,
                  endcolor: 0xFF8522A3,
                  radius: 25,
                  activecolor: Colors.white,
                  inactivecolor: Color(0xFFD64570),
                  fntsize: 12,
                ),
                CustomAnimatedButton(
                  text: "Summative",
                  selected: _summative,
                  onTap: () {
                    _classs = false;
                    _periodic = false;
                    _summative = true;
                    notifyListeners();
                  },
                  height: _appConfig.rH(5),
                  width: _appConfig.rW(32),
                  startcolor: 0xFFD64575,
                  midcolor: 0xFFD64570,
                  endcolor: 0xFF8522A3,
                  radius: 25,
                  activecolor: Colors.white,
                  inactivecolor: Color(0xFFD64570),
                  fntsize: 12,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomAnimatedButton(
                  text: "Term 1",
                  selected: _term1,
                  onTap: () {
                    _term1 = true;
                    _term2 = false;
                    _term3 = false;
                    notifyListeners();
                  },
                  height: _appConfig.rH(5),
                  width: _appConfig.rW(25),
                  startcolor: 0xFFD64575,
                  midcolor: 0xFFD64570,
                  endcolor: 0xFF8522A3,
                  radius: 25,
                  activecolor: Colors.white,
                  inactivecolor: Color(0xFFD64570),
                  fntsize: 12,
                ),
                CustomAnimatedButton(
                  text: "Term 2",
                  selected: _term2,
                  onTap: () {
                    _term1 = false;
                    _term2 = true;
                    _term3 = false;
                    notifyListeners();
                  },
                  height: _appConfig.rH(5),
                  width: _appConfig.rW(25),
                  startcolor: 0xFFD64575,
                  midcolor: 0xFFD64570,
                  endcolor: 0xFF8522A3,
                  radius: 25,
                  activecolor: Colors.white,
                  inactivecolor: Color(0xFFD64570),
                  fntsize: 12,
                ),
                CustomAnimatedButton(
                  text: "Term 3",
                  selected: _term3,
                  onTap: () {
                    _term1 = false;
                    _term2 = false;
                    _term3 = true;
                    notifyListeners();
                  },
                  height: _appConfig.rH(5),
                  width: _appConfig.rW(25),
                  startcolor: 0xFFD64575,
                  midcolor: 0xFFD64570,
                  endcolor: 0xFF8522A3,
                  radius: 25,
                  activecolor: Colors.white,
                  inactivecolor: Color(0xFFD64570),
                  fntsize: 12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buutonwidget2(TabController tabController) {
    return PreferredSize(
      preferredSize: new Size(200.0, 200.0),
      child: new Container(
        width: double.infinity,
        child: new TabBar(
          isScrollable: true,
          indicatorColor: Colors.purple,
          tabs: [
            RoundedTabAll(
              sel: chsTab(),
              stat: "Draft",
            ),
            RoundedTabAll(
              sel: chsTab(),
              stat: "Submitted",
            ),
            RoundedTabAll(
              sel: chsTab(),
              stat: "Approved",
            ),
            RoundedTabAll(
              sel: chsTab(),
              stat: "Rejected",
            ),
            RoundedTabAll(
              sel: chsTab(),
              stat: "Scheduled",
            ),
            RoundedTabAll(
              sel: chsTab(),
              stat: "Conducted",
            ),
            RoundedTabAll(
              sel: chsTab(),
              stat: "Evaluated",
            )
          ],
          controller: tabController,
        ),
      ),
    );
  }

  int chsTab(){
    if(classs&&term1){
      print(classs&&term1);
      return 1;
    }else if(classs&&term2){
      return 2;
    }else if(classs&&term3){
      return 3;
    }else if(periodic&&term1){
      return 4;
    }else if(periodic&&term2){
      return 5;
    }else if(periodic&&term3){
      return 6;
    }else if(summative&&term1){
      return 7;
    }else if(summative&&term2){
      return 8;
    }else
      return 9;
  }
}
