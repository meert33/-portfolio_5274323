import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/desktop/largescreen_layout.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder:(context, constrains){
    if(constrains.maxWidth<500){
      return const Scaffold();

     } else {
      return const LargeScreenLayout();

      }
    
    });
  }
}