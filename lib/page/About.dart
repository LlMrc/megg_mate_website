import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:megg_mate_website/constant/color.dart';

class About extends StatelessWidget {
   About({Key? key}) : super(key: key);
  final String string = '''
Welcome to Magg Mate, your number one source for all things about Web and Mobile Application. 
     
      We're dedicated to providing you the very best of App, with an emphasis on [store characteristic 1],   [store characteristic 2], [store characteristic 3].

 Founded in 2021 by @Leonard LLmrc, Magg Mate  web technologies has come a long way from its beginnings in Port of Prince.
 When Megghev team first started out, we' re working to turn our passion for
  Mobile Application into a booming 
  website. Let us the opotunity to help you grow your buseness by adding some visiblity.
 we now serve custumers all over the world.
 We hope you enjoy our products as much as we enjoy offering them to you. If you have any ''';

  String seconString = '''  please don't hesitate to contact us.

Sincerely,

LLmrc Leonard''';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
    
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  width: 200,
                  child: LottieBuilder.network('https://assets8.lottiefiles.com/packages/lf20_wzigwqwi.json')),
                RichText(
                  text: TextSpan(
                      text: string,
                      style: const TextStyle(letterSpacing: 2, fontSize: 16, color: Colors.black87),
                      children: [
                        TextSpan(
                            text: 'questions',
                            style: const TextStyle(
                                color: Colors.blueAccent, fontSize: 18),
                            recognizer: TapGestureRecognizer()..onTap = () {}),
                        const TextSpan(
                            text: ' or ',
                            style: TextStyle(color: Colors.black, )),
                        TextSpan(
                            text: 'comment',
                            style: const TextStyle(
                                color: Colors.blueAccent, fontSize: 18),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('object');
                              }),
                        TextSpan(text: seconString, style: const TextStyle(color: Colors.black87))
                      ]),
                ),
              ],
            ),
          )),
    );
  }
}
