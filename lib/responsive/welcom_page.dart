 import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:megg_mate_website/animation/animation_fade.dart';
import 'package:megg_mate_website/animation/fadding.dart';
import 'package:megg_mate_website/widget/custom_text.dart';

import '../constant/string.dart';


class WelcomPage extends StatelessWidget {
  final VoidCallback ontap;
  const WelcomPage({Key? key, required this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: SingleChildScrollView(
        child: Column(children:[
           FadeAnimation(delay: 800,
           child: Image.asset('assets/team.png')),
           FadeAnimation(
             delay: 1000,
             child: SizedBox(
                          width: 450,
                          child: CustomText(
                              text: string,
                              style:
                                  GoogleFonts.roboto(
                                      fontSize: 35,
                                      letterSpacing:
                                          1)),
                                            ),
           ),
             const SizedBox(height: 20),
           FadeAnimation(
             delay: 2000,
             child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0))),
                              minimumSize: MaterialStateProperty.all(const Size(90, 50))),
                          onPressed: ontap,
                          child: CustomText(
                              text: 'Enter',
                              style: GoogleFonts.roboto(
                                  color: Colors.white, fontSize: 20))),
           )
        ] ),
      ),
    ),);
  }
}