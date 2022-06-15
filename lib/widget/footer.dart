import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:megg_mate_website/widget/custom_text.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constant/string.dart';
import '../page/clients_page.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const sizeBox = SizedBox(
      height: 10,
    );
    return Container(
        height: 100,
        color: const Color(0xff142F43),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 500,
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            CustomText(text: 'ABOUT US',style: TextStyle(
                                color: Colors.grey.shade400),),
                sizeBox,
                const Text(about, maxLines: 4, overflow: TextOverflow.ellipsis,),
              ]
            )),
            SizedBox(
                child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                 CustomText(text: 'QUICK LINK',style: TextStyle(
                                color: Colors.grey.shade400),),
                sizeBox,
                RichText( text: TextSpan(text: 'LinkedIn',style: const TextStyle(
                                color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap =  () =>_launchUrl('https://www.linkedin.com/in/louis-marc-leonard-a57a13192/'))),

                RichText( text: TextSpan(text: 'Github',style: const TextStyle(
                                color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap =  () =>_launchUrl('https://github.com/LlMrc'))),


                RichText( text: TextSpan(text: 'FaceBook',style: const TextStyle(
                                color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap =  () =>_launchUrl('https://web.facebook.com/Megg-Mate-102954682430141'))),

                RichText( text: TextSpan(text: 'Twitter',style: const TextStyle(
                                color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () =>_launchUrl('https://twitter.com/LouisMcLeonard1?fbclid=IwAR0glusKUabYNC422ku1wpoYpAJ2PCPDmEhksjF5-3tYxwdZIt6V57hSC-I'))),
              ],
            )),
            SizedBox(
                child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
               CustomText(text: 'TECHNOLOGIE',style: TextStyle(
                                color: Colors.grey.shade400),),
                sizeBox,
                const Text('Ui design',style: TextStyle(
                                color: Colors.blue)),
                 const Text('Dart',style: TextStyle(
                                color: Colors.blue)),
                  const Text('Flutter',style: TextStyle(
                                color: Colors.blue)),
                    const Text('Firebase',style: TextStyle(
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
