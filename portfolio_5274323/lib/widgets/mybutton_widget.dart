import 'package:flutter/material.dart';
import 'package:my_portfolio/core/colors.dart';


class MyButton extends StatelessWidget {
  final Size? size; final String text;
  const MyButton({super.key,required this.size,this.text ="Save", required TextStyle style});


  @override
  Widget build(BuildContext context) {
    final themeData=Theme.of(context);
    return Container(
      decoration: BoxDecoration(
borderRadius: BorderRadius.circular(12), color:btnColor      
      ),
height: 45,
width: size!.width*0.15,
child: Center(
  child: Text(text,style:themeData.textTheme.bodySmall,),
),

    );
  }
}

