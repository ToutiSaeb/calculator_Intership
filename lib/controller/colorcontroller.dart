import 'package:calculator/core/constant/btn.dart';
import 'package:flutter/material.dart';

class Colorcontroller with ChangeNotifier{
 buttonColor(String x,context){
    if(x==Btn.btnEql){
      return Theme.of(context).colorScheme.primary;
    }
    else if(x==Btn.btnPlus||x==Btn.btnMinus||x==Btn.btnMult||x==Btn.btnDiv){
      return Theme.of(context).colorScheme.secondary;
    }
    else{
      return Theme.of(context).colorScheme.tertiary;
    }
  }
}