import 'package:flutter/cupertino.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/providers/buttonprovider.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/screens/assmainteach.dart';
import 'package:phygitalz_project_1/Assessment/Teacher/widgets/draft_cards.dart';


class TabProvider extends AssTeacher{

  TabProvider():super();
  chooseTab(){
    if(ButtonProvider.classs&&ButtonProvider.term1){

      return Draftcard(type: "Class",term: "Term 1",);

    }else if(ButtonProvider.classs&&ButtonProvider.term2){

      return Draftcard(type: "Class",term: "Term 2",);
    }else if(ButtonProvider.classs&&ButtonProvider.term3){
      return Draftcard(type: "Class",term: "Term 3",);
    }else if(ButtonProvider.periodic&&ButtonProvider.term1){
      return Draftcard(type: "Periodic",term: "Term 1",);
    }else if(ButtonProvider.periodic&&ButtonProvider.term2){
      return Draftcard(type: "Periodic",term: "Term 2",);
    }else if(ButtonProvider.periodic&&ButtonProvider.term3){
      return Draftcard(type: "Periodic",term: "Term 3",);
    }else if(ButtonProvider.summative&&ButtonProvider.term1){
      return Draftcard(type: "Summative",term: "Term 1",);
    }else if(ButtonProvider.summative&&ButtonProvider.term2){
      return Draftcard(type: "Summative",term: "Term 2",);
    }else
      return Draftcard(type: "Summative",term: "Term 3",);

  }

}