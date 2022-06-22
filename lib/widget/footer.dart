import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:megg_mate_website/widget/custom_text.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const sizeBox = SizedBox(
      height: 10,
    );
    double fontsize = 16;
    return Container(
    decoration:  const BoxDecoration(gradient: LinearGradient(colors: [
      Color(0xff142F43),
      Color.fromARGB(255, 159, 78, 34),
    ],
     begin: Alignment.topLeft, //begin of the gradient color
            end: Alignment.bottomRight, //end of the gradient color
             )),
       
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            
            SizedBox(
                child: Wrap(
       spacing: 14,
              children:  [
                 CustomText(text: 'QUICK LINK',style: TextStyle(
                                color: Colors.grey.shade400),),
                sizeBox,
                IconButton(onPressed: ()=> _launchUrl('https://www.linkedin.com/in/louis-marc-leonard-a57a13192/'),
                  icon: const FaIcon(FontAwesomeIcons.linkedin, size: 50, color: Colors.blue,)),
             

                 IconButton(onPressed: ()=>_launchUrl('https://github.com/LlMrc'), icon: const FaIcon(FontAwesomeIcons.githubSquare, size: 50, color: Colors.blue,),),


                IconButton(onPressed: ()=>  _launchUrl('https://web.facebook.com/Megg-Mate-102954682430141'), icon: const FaIcon(FontAwesomeIcons.facebookSquare, size: 50, color: Colors.blue),),

                   IconButton(onPressed: ()=>_launchUrl('https://twitter.com/LouisMcLeonard1?fbclid=IwAR0glusKUabYNC422ku1wpoYpAJ2PCPDmEhksjF5-3tYxwdZIt6V57hSC-I'), icon: const FaIcon(FontAwesomeIcons.twitterSquare, size: 50, color: Colors.blue)),
              ],
            )),
            SizedBox(
                child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
               CustomText(text: 'TECHNOLOGIE',style: TextStyle(
                                color: Colors.grey.shade400),),
                sizeBox,
                 Text('Ui design',style: TextStyle(
                   fontSize: fontsize,
                                color: Colors.blue)),
                  Text('Dart',style: TextStyle(
                                    fontSize: fontsize,
                                color: Colors.blue)),
                   Text('Flutter',style: TextStyle(
                     fontSize: fontsize,
                                color: Colors.blue)),
                     Text('Firebase',style: TextStyle(
                       fontSize: fontsize,
                                color: Colors.blue)),
              ],
            )),
           
          ],
        ));
  }
  void _launchUrl(url) async {
  if (!await launchUrl(Uri.parse(url))) throw 'Could not launch $url';
}
}
