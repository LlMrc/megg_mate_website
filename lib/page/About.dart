import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:megg_mate_website/constant/color.dart';

import 'package:megg_mate_website/page/contact.dart';




import '../constant/string.dart';
import '../widget/custom_text.dart';

class About extends StatelessWidget {
  About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        margin: const EdgeInsets.only(bottom:50, top: 20),
        width:MediaQuery.of(context).size.width/2,   
        height:500,                
        child: Card(       
        color: light,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),                       
         elevation:4,
         shadowColor: Colors.grey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children:[
                Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                  CustomText(
                  text: 'About us',
                  style: GoogleFonts.aBeeZee(fontSize: 30),
                  ),
                  SizedBox(
                height: 50,
             width: 50,
                child: LottieBuilder.network(
                  'https://assets8.lottiefiles.com/packages/lf20_wzigwqwi.json')),
                  ],
                )),
            const SizedBox(
              height: 10,
            ),
            RichText(
              text: TextSpan(
                  text: about,
                  style: const TextStyle(
              letterSpacing: 2,
              fontSize:20,
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
                
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
