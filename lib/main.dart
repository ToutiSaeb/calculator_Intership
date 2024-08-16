import 'package:calculator/controller/calculexpressioncontroller.dart';
import 'package:calculator/controller/colorcontroller.dart';
import 'package:calculator/controller/themecontroller.dart';
import 'package:calculator/core/theme/darkmode.dart';
import 'package:calculator/core/theme/lightmode.dart';
import 'package:calculator/view/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
WidgetsFlutterBinding.ensureInitialized();
  
  runApp(MultiProvider(
   
    providers: [
      ChangeNotifierProvider(create: (context)=>Themecontroller()),
      ChangeNotifierProvider(create: (context)=>Colorcontroller()),
      ChangeNotifierProvider(create: (context)=>Calculexpressioncontroller()),
    
  ],
   child: const Myapp(),
  ),
  
  );
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          theme: lightmode,
          darkTheme: darkmode,
          themeMode: Provider.of<Themecontroller>(context).thememode,
          home: const Home(),
        );
    
  }
}
