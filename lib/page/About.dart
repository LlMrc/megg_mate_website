import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'package:megg_mate_website/page/contact.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constant/string.dart';
import '../widget/custom_text.dart';

class About extends StatelessWidget {
  About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          width: 600,
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                    height: 160,
                    width: 200,
                    child: LottieBuilder.network(
                        'https://assets8.lottiefiles.com/packages/lf20_wzigwqwi.json')),
                Align(
                    alignment: Alignment.topLeft,
                    child: CustomText(
                      text: 'About us',
                      style: GoogleFonts.aBeeZee(fontSize: 30),
                    )),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                      text: about,
                      style: const TextStyle(
                          letterSpacing: 2,
                          fontSize: 16,
                          color: Colors.black87),
                      children: [
                        TextSpan(
                            text: 'questions',
                            style: const TextStyle(
                                color: Colors.blueAccent, fontSize: 18),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => Contact(fontSize: 10)));
                              }),
                        const TextSpan(
                            text: ' or ',
                            style: TextStyle(
                              color: Colors.black,
                            )),
                        TextSpan(
                            text: 'comment',
                            style: const TextStyle(
                                color: Colors.blueAccent, fontSize: 18),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => Contact(fontSize: 20)));
                              }),
                        TextSpan(
                            text: seconString,
                            style: const TextStyle(color: Colors.black87))
                      ]),
                ),
              ],
            ),
          )),
    );
  }
}
