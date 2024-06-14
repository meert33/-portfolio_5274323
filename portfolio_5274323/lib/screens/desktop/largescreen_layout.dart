import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/colors.dart';
import 'package:my_portfolio/core/textstyle.dart';
import 'package:my_portfolio/widgets/costum_section.dart';
import 'package:my_portfolio/widgets/header_widget.dart';
import 'package:my_portfolio/widgets/mybutton_widget.dart';
import 'package:my_portfolio/widgets/spacer_height.dart';

class LargeScreenLayout extends StatelessWidget {
const LargeScreenLayout({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeData = Theme.of(context);

    return Scaffold(
    body: SingleChildScrollView(
padding: EdgeInsets.all(size.width * 0.025),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
   children: [
 const HeaderWidget(),
const SpacerHeightWidget(height: 20),
 SectionContainer(
 width: size.width,
 height: size.height * 0.70,
color: PrimaryColor,
child: Row(
children: [
                  Expanded(
  child: SectionContainer(
 height: size.height * 0.70,
   color: PrimaryColor,
   child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
     "Mert Tras",
       style: themeData.textTheme.bodySmall,
textAlign: TextAlign.left,),
Text("Portfolio Website",
style: GoogleFonts.poppins(
  color: btnColor,
  fontSize: 60,
  fontWeight: FontWeight.w700, ),
  textAlign: TextAlign.left ),
  Text("Ich komme aus Wetzlar",
  style: GoogleFonts.poppins(color: const Color.fromARGB(179, 249, 250, 250),fontWeight: FontWeight.w400),
 textAlign: TextAlign.left,),
 const SingleChildScrollView(),
  MyButton(size: size, text: "Lebenslauf", style: bodyStyle),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SectionContainer(
                      color: PrimaryColor,
                      child: Container(
                        height: size.height * 0.50,
                        width: size.width * 0.55,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: PrimaryColor.withGreen(200),
                          image: const DecorationImage(
                            image: AssetImage('img/images.jpg'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Key-Facts über mich",
                          style: themeData.textTheme.bodySmall,
                        ),
                        const Spacer(flex: 20),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: 3,
                          itemBuilder: (context, index){
                            return FractionallySizedBox(
                              widthFactor: 0.75,
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                height: 100,
                                child: Card(
                                  elevation: 5.0,
                                  child: Center(
                                    child: ListTile(
                                      title: Text(
                                        "Jung",
                                        style: bodyStyle,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SpacerHeightWidget(height: 20),
            AboutWidget(size: size, themeData: themeData),
            const SpacerHeightWidget(height: 20),
           SectionContainer(
              width: size.width,
              color: PrimaryColor,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Berufserfahrungen",
                          style: themeData.textTheme.bodySmall,
                        ),
                        const SpacerHeightWidget(height: 20),
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return FractionallySizedBox(
                                widthFactor: 0.75,
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  height: 100,
                                  child: Card(
                                    elevation: 5.0,
                                    color: PrimaryColor,
                                    child: Center(
                                      child: ListTile(
                                        leading: CircleAvatar(
                                          child: Icon(
                                            Icons.circle,
                                            color: btnColor,
                                          ),
                                        ),
                                                title: Text(
                                                  "Lebenslauf",
                                          style: bodyStyle,
                                      ),
                                      subtitle: Text(
                                        "2019-Present",
                                        style: bodyStyle,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class AboutWidget extends StatelessWidget {
  const AboutWidget({
    super.key,
    required this.size,
    required this.themeData,
  });

  final Size size;
  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Meine Ziele",
            style: themeData.textTheme.bodyLarge,
          ),
          const SpacerHeightWidget(height: 25),
          Text(
            "Mein Ziel ist es, dass ich ein Programmierer bin wie Elon Musk",
            style: bodyStyle,
          ),
        ],
      ),
    );
  }
  
}