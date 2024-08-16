import 'package:flutter/material.dart';

class CustomtextblocA extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double size;
  final int flex;
  const CustomtextblocA({super.key, required this.text, required this.color, required this.fontWeight, required this.size, required this.flex});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex: flex,
      child: Text(text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: size,
      ),
      )
      ,
      );
  }
}