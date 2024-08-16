import 'package:calculator/core/constant/btn.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculexpressioncontroller with ChangeNotifier {
  String chaine = '';
  String result = '0';

  String evaluateExpression(String expression) {
    try {
      Parser p = Parser();
      Expression exp = p.parse(expression);
      String evalResult = exp.evaluate(EvaluationType.REAL, ContextModel()).toString();
      
      if (evalResult.endsWith(".0")) {
        evalResult = evalResult.substring(0, evalResult.length - 2);
      }

      return evalResult;
    } catch (e) {
      return "LivaException: error";
    }
  }

  void getExpression(String ch) {
    if (ch == Btn.btnC) {
      chaine = '';
      result = '0';
    } else if (ch == Btn.btnEql) {
      result = evaluateExpression(chaine);
    }
    
    else {
      chaine = chaine + ch;
    }
    
    notifyListeners();
  }
}
