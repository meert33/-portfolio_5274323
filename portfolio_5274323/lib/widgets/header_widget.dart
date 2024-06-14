import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/colors.dart';
import 'package:my_portfolio/widgets/costum_section.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeData = Theme.of(context);

    return SectionContainer(
      width: size.width,
      color: PrimaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              text: "Portfolio von",
              style: themeData.textTheme.bodyMedium,
              children: [
                TextSpan(
                  text: " Mert Tras",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    color: btnColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildHeaderButton("Über mich", themeData, context, const AboutPage()),
              const SizedBox(width: 10.0), 
              _buildHeaderButton("Skills", themeData, context, const SkillsPage()),
              const SizedBox(width: 10.0),
              _buildHeaderButton("Projekte", themeData, context, const ProjectsPage()),
              const SizedBox(width: 10.0),
              _buildHeaderButton("Kontakt", themeData, context, const ContactPage()),
              
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderButton(String text, ThemeData themeData, BuildContext context, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Text(
        text,style: themeData.textTheme.titleSmall,
      ),
    );
  }
}
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Über mich'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Über mich',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'Willkommen auf meiner Über mich Seite! Ich freue mich, dass Sie mehr über mich erfahren möchten.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 16),
              Text(
                'Beruflicher Werdegang',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Ich habe meinen Abschluss in Informatik gemacht und arbeite seit über 10 Jahren in der IT-Branche. '
                'In dieser Zeit habe ich an zahlreichen Projekten gearbeitet und wertvolle Erfahrungen gesammelt.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 16),
              Text(
                'Hobbys und Interessen',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'In meiner Freizeit verbringe ich gerne Zeit mit meiner Familie und Freunden. '
                'Ich reise gerne und entdecke neue Kulturen. Außerdem bin ich ein begeisterter Leser und interessiere mich für Technologie und Wissenschaft.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 16),
              Text(
                'Kontakt',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Wenn Sie mehr über mich erfahren oder in Kontakt treten möchten, zögern Sie nicht, mir eine Nachricht zu schicken.',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Skills')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Dies ist die Skills Seite'),
            SizedBox(height: 20),
            Text('Hier sind einige der Fähigkeiten die ich erworben habe:'),
            SizedBox(height: 10),
            Text('• Programmierung'),
            Text('• Problemlösung'),
            Text('• Kommunikation'),
            Text('• Teamarbeit'),
            Text('• Kreativität'),
          ],
        ),
      ),
    );
  }
}


class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Projekte')),
    body: const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Dies ist die Projekte Seite'),
          SizedBox(height: 20),
          Text('Hier sind einige Projektbeispiele:'),
          SizedBox(height: 10),
          Text('Projekt 1: Entwicklung Apps mit Low-Code Plattform Power Apps 1'),
          SizedBox(height: 10),
          Text('Projekt 2: Flutter Projektentwicklung '),
          SizedBox(height: 10),
          Text('Projekt 3: Beschreibung des Projekts 3'),
        ],
      ),
    ),
  );
}
}
class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kontakt')),
    body: const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Dies ist die Kontakte Seite',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            'Adresse: Georgienstraße 23, 35578 Dutenhofen',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          Text(
            'Telefon: +49 157 8971 4459',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          Text(
            'Email: Mert.Tras@mnd.thm.de',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    ),
  );
}
}
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Über mich'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Über mich',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'Willkommen auf meiner Über mich Seite! Ich freue mich, dass Sie mehr über mich erfahren möchten.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 16),
              Text(
                'Beruflicher Werdegang',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Ich habe meinen Abschluss in Informatik gemacht und arbeite seit über 10 Jahren in der IT-Branche. '
                'In dieser Zeit habe ich an zahlreichen Projekten gearbeitet und wertvolle Erfahrungen gesammelt.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 16),
              Text(
                'Hobbys und Interessen',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'In meiner Freizeit verbringe ich gerne Zeit mit meiner Familie und Freunden. '
                'Ich reise gerne und entdecke neue Kulturen. Außerdem bin ich ein begeisterter Leser und interessiere mich für Technologie und Wissenschaft.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 16),
              Text(
                'Kontakt',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Wenn Sie mehr über mich erfahren oder in Kontakt treten möchten, zögern Sie nicht, mir eine Nachricht zu schicken.',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
