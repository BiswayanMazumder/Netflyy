import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/firstpage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
class Privacy extends StatefulWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/netflix-5002f.appspot.com/o/main1.gif?alt=media&token=8c23ed44-c27b-4094-851d-17a985737ec7'),fit: BoxFit.fitHeight,opacity:100)
      ),
      child: ListView(
        children: [
          Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: AnimatedTextKit(animatedTexts: [
                  TypewriterAnimatedText('Privacy\nPolicy',textStyle: GoogleFonts.arizonia(
                    color: Colors.black,
                    fontSize: 80,
                    letterSpacing: 2,
                    wordSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                      speed: Duration(milliseconds: 500),
                      textAlign: TextAlign.justify)
                ],
                  totalRepeatCount: 2,
                  pause: const Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  isRepeatingAnimation: true,
                  stopPauseOnTap: true,

                ),
              ),
              Text('This Privacy Statement explains our practices, '
                  'including your choices, regarding the collection, use, and disclosure of certain information, '
                  'including your personal information in connection with the Netflix service.\nContacting Us\n'
                  'If you have general questions about your account or how to contact customer service for assistance, '
                  'please visit our online help center at help.netflix.com. For questions specifically about this Privacy Statement, '
                  'or our use of your personal information, cookies or similar technologies, please contact our Data Protection '
                  'Officer/Privacy Office by email at privacy@netflix.com.The data controller of your personal information '
                  'is Netflix Entertainment Services India LLP. Please note that if you contact us to assist you, for '
                  'your safety and ours we may need to authenticate your identity before fulfilling your request.',style:GoogleFonts.arya(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold
              ),)
            ],
          )
        ],
      ),
    )
    );
  }
}

