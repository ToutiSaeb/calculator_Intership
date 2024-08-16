import 'package:calculator/controller/calculexpressioncontroller.dart';
import 'package:calculator/controller/colorcontroller.dart';
import 'package:calculator/view/widget/customtextbutton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Custombutton extends StatelessWidget {
  final bool isLastItem;
  final int index;
  final String x;
  const Custombutton({super.key, required this.isLastItem, required this.index, required this.x});

  @override
  Widget build(BuildContext context) {
    return Container(
                padding: const EdgeInsets.all(0.5),
           
                height: MediaQuery.of(context).size.height*(3/25),
                width: isLastItem ? (MediaQuery.of(context).size.width / 2) : (MediaQuery.of(context).size.width / 4) , 
            
                child: MaterialButton(
                  color: Provider.of<Colorcontroller>(context).buttonColor(x, context),
                  child: Customtextbutton(index: index),
                  onPressed: () {
                    if(x=='x'){
                      Provider.of<Calculexpressioncontroller>(context,listen: false).getExpression('*');
                    }
                    else{
                      Provider.of<Calculexpressioncontroller>(context,listen: false).getExpression(x);

                    }
                    
                  },
                ),
              );
  }
}