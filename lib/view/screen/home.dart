import 'package:calculator/view/widget/customIcon.dart';
import 'package:calculator/view/widget/customblocA.dart';
import 'package:calculator/view/widget/customblocB.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
        child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Customicon(),
                   CustomblocA(),
                   CustomblocB()
                 
                ],
              ),
          ),
      
    
      
    );
  }
}