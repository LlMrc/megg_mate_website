import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:megg_mate_website/constant/color.dart';
import 'package:mailto/mailto.dart';
import 'package:megg_mate_website/page/desktop_body.dart';
import 'package:megg_mate_website/widget/custom_text.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  final double? width;
  final double fontSize;
  Contact({Key? key, required this.fontSize, this.width}) : super(key: key);
  final String text =
      '''Please submit your request here, you will be served in less than 72 hours.''';

  TextEditingController mailController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Center(
      child: SingleChildScrollView(
        reverse: true,
        child: SizedBox(
          width: 600,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CustomText(
                    text: text,
                    style: GoogleFonts.raleway(
                      fontSize: fontSize,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff4D4C7D),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 18.0),
                margin: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(12)),
                width: width ?? 500,
                child: Column(
                  children: [
                    TextFormField(
                      maxLines: 1,
                      controller: mailController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('mail'),
                          hintMaxLines: 1),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      maxLines: 1,
                      controller: subjectController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('subject'),
                          hintMaxLines: 1),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: messageController,
                      maxLines: 5,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintMaxLines: 10,
                          label: Text('Message')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                              style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all<Size>(
                                      const Size(70, 50)),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.red)),
                              child: const Text('Cancel'),
                              onPressed: () {}),
                          const SizedBox(width: 18),
                          ElevatedButton(
                              style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all<Size>(
                                      const Size(70, 50))),
                              onPressed: () {
                                launchMailto();
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => DesktopBody(
                                              idx: 1,
                                              isVsble: false,
                                            )));
                              },
                              child: const Text('Submit')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }


  void launchMailto() async {
    final mailtoLink = Mailto(
        to: [('llouismrc2@gmail.com')],
        cc: [(mailController.text)],
        subject: subjectController.text,
        body: messageController.text);
    // Convert the Mailto instance into a string.
    // Use either Dart's string interpolation
    // or the toString() method.
    _launchUrl(Uri.parse('$mailtoLink'));
  }

  void _launchUrl(Uri link) async {
    if (!await launchUrl(link)) throw 'Could not launch $link';
  }
}
