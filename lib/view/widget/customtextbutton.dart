import 'package:calculator/model/calculator.dart';
import 'package:flutter/material.dart';

class Customtextbutton extends StatelessWidget {
  final int index;
  const Customtextbutton({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(
                    Calculator.list[index],
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  );
  }
}