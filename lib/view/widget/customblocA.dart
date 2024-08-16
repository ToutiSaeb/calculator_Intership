
import 'package:calculator/controller/calculexpressioncontroller.dart';
import 'package:calculator/view/widget/customtextblocA.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomblocA extends StatelessWidget {
  const CustomblocA({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                    padding:  const EdgeInsets.symmetric(horizontal: 20),
                    width:MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*(1/5),
                    color: Theme.of(context).colorScheme.surface,
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.end,

                      children: [
                       CustomtextblocA(
                       text: Provider.of<Calculexpressioncontroller>(context).chaine,
                       color: Theme.of(context).colorScheme.onPrimary,
                       fontWeight: FontWeight.bold,
                       size: 20,
                       flex: 1),
                       CustomtextblocA(
                       text: Provider.of<Calculexpressioncontroller>(context).result,
                       color: Theme.of(context).colorScheme.onSurface,
                       fontWeight: FontWeight.bold,
                       size: 30,
                       flex: 1),

                        
                        
                      ],
                    ),
                  );
  }
}