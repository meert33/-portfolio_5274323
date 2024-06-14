import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SectionContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? color;
  final Widget? child;

  const SectionContainer({
    Key? key,
    this.width,
    this.height,
    this.color,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 1, 5, 16).withOpacity(0.1),
            blurRadius: 5,
            spreadRadius: 2,
           // offset: const Offset(0, 2),
          ), 
        ],
      ),
      child: child,
    );
  }
}
