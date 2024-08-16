import 'package:calculator/controller/themecontroller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Customicon extends StatelessWidget {
  const Customicon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
                 height: MediaQuery.of(context).size.height*(1/5),
                 width: double.infinity,
                 child: IconButton(
  onPressed: () {
    Provider.of<Themecontroller>(context, listen: false).changeTheme();
  },
  icon: Icon(
    Provider.of<Themecontroller>(context).thememode == ThemeMode.light
        ? Icons.dark_mode 
        : Icons.light_mode, 
  ),
),

                );
  }
}