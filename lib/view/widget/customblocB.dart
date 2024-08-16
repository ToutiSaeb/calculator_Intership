import 'package:calculator/model/calculator.dart';
import 'package:calculator/view/widget/custombutton.dart';
import 'package:flutter/material.dart';

class CustomblocB extends StatelessWidget {
  const CustomblocB({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                    
         width:MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height*(3/5),
          color: Theme.of(context).colorScheme.surface,
          child: Wrap(
            
            children: List.generate(Calculator.list.length, (index) {
              bool isLastItem = index == Calculator.list.length - 1;
        
              return  Custombutton(isLastItem: isLastItem, index: index, x: Calculator.list[index],);
            }),
          ),
        );
  }
}