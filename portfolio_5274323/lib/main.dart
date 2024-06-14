import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/colors.dart';
import 'package:my_portfolio/screens/home_page.dart';
void main(){
  runApp(const My_Portfolio());
}
// ignore: camel_case_types
class My_Portfolio extends StatelessWidget {
  const My_Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My_Portfolio",

      theme: ThemeData(
        scaffoldBackgroundColor: PrimaryColor,
        textTheme: TextTheme(
bodySmall:GoogleFonts.poppins(color:const Color.fromARGB(255, 214, 228, 21),fontSize:20, fontWeight:FontWeight.normal),
bodyMedium: GoogleFonts.poppins(color: Colors.yellow,fontSize:25, fontWeight: FontWeight.w500),
bodyLarge: GoogleFonts.poppins(color:Colors.blue,fontSize: 32, fontWeight:FontWeight.w700),

titleSmall:GoogleFonts.poppins(color:Colors.white,fontSize:25, fontWeight:FontWeight.w500),

        )
      ),

home: const Homepage()
    ); //My_Portfolio
  }
}