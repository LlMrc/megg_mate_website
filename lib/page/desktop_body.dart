import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'package:megg_mate_website/page/apply.dart';
import 'package:megg_mate_website/page/application.dart';

import 'package:megg_mate_website/page/about.dart';
import 'package:megg_mate_website/page/contact.dart';
import 'package:megg_mate_website/model/slide_transition.dart';
import 'package:megg_mate_website/widget/custom_text.dart';
import 'package:shimmer/shimmer.dart';
import 'package:store_redirect/store_redirect.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constant/string.dart';
import '../model/animation_fade.dart';
import '../widget/app_bar_button.dart';
import '../widget/footer.dart';

class DesktopBody extends StatefulWidget {
  DesktopBody({Key? key, this.idx = 0, this.isVsble = true}) : super(key: key);
  int idx;
  bool isVsble;
  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  bool isvisible = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                alignment: Alignment.centerLeft,
                height: 40,
                color: const Color.fromARGB(255, 52, 79, 102),
                child: Image.asset(
                  'assets/apply.png',
                  width: 200,
                  fit: BoxFit.cover,
                  height: 55,
                )),
            SizedBox(
                height: 60,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          child: Row(
                        children: [
                          DisplayWidget(
                            text: 'Home',
                            onPressed: () {
                              isvisible = true;
                              widget.isVsble = true;
                              setState(() => widget.idx = 0);
                            },
                          ),
                          DisplayWidget(
                            text: 'Apps',
                            onPressed: () {
                              widget.isVsble = false;
                              isvisible = true;
                              setState(() => widget.idx = 1);
                            },
                          ),
                          const SizedBox(width: 200),
                        ],
                      )),
                      SizedBox(
                        child: Row(children: [
                          DisplayWidget(
                            text: 'Apply',
                            onPressed: () {
                              widget.isVsble = true;
                              isvisible = true;
                              setState(() => widget.idx = 2);
                            },
                          ),
                          DisplayWidget(
                            text: 'Contact',
                            onPressed: () {
                              isvisible = true;
                              widget.isVsble = true;
                              setState(() => widget.idx = 3);
                            },
                          ),
                          DisplayWidget(
                            text: 'About us',
                            onPressed: () {
                              isvisible = true;
                              widget.isVsble = true;
                              setState(() => widget.idx = 4);
                            },
                          ),
                        ]),
                      )
                    ])),
            Expanded(
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Visibility(
                          visible: widget.isVsble,
                          child: SizedBox(
                              width: 230,
                              child: sideBarItem1(child: const SizedBox()))),
                      SizedBox(
                        width: _width(child: 600),
                        height: MediaQuery.of(context).size.height,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            mySelectedWidget(
                                child: SizedBox(
                                    height: 500,
                                    child: Row(
                                      children: [
                                        SingleChildScrollView(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const SizedBox(height: 20),
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Shimmer.fromColors(
                                                  baseColor:
                                                      const Color(0xff242F9B),
                                                  highlightColor: Colors
                                                      .deepOrange.shade200,
                                                  child: AnimationTransition(
                                                    delay: 900,
                                                    child: CustomText(
                                                        text:
                                                            'Welcom to Megg Mate',
                                                        style: GoogleFonts.coda(
                                                            fontSize: 49,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: const Color(
                                                                0xff242F9B))),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 5),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: SizedBox(
                                                    width: 450,
                                                    child: CustomText(
                                                        text: string,
                                                        style:
                                                            GoogleFonts.roboto(
                                                                fontSize: 35,
                                                                letterSpacing:
                                                                    1)),
                                                  )),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              AnimationTransition(
                                                delay: 1000,
                                                child: Text(text,
                                                    style: GoogleFonts.alatsi(
                                                        fontSize: 35,
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 10, 62, 90))),
                                              ),
                                              const SizedBox(height: 30),
                                              AnimationTransition(
                                                delay: 2000,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 360),
                                                  child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        shape: MaterialStateProperty.all<
                                                                RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            30.0))),
                                                        minimumSize:
                                                            MaterialStateProperty
                                                                .all(const Size(
                                                                    120, 70))),
                                                    onPressed: () =>
                                                      setState(() => widget.idx = 2),
                                                  
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        CustomText(
                                                            text: 'Apply Now',
                                                            style: GoogleFonts
                                                                .roboto(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        30)),
                                                        const SizedBox(
                                                          width: 12,
                                                        ),
                                                        const Transition(
                                                            child: Icon(
                                                          Icons.arrow_forward,
                                                          size: 40,
                                                          color: Color.fromARGB(
                                                              255,
                                                              237,
                                                              204,
                                                              154),
                                                        ))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ))),
                            const SizedBox(height: 40),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: isvisible,
                        child: Expanded(
                          child: sideBarItem(
                              child: SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 2,
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'assets/team.png',
                                      ),
                                    RichText( text: TextSpan(text: 'created by pch.vector',style: const TextStyle(
                                color: Colors.grey),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () =>_launchUrl('https://www.freepik.com/vectors/programming-language'))),
                                    ],
                                  ))),
                        ),
                      ),
                    ],
                  ),
                  const Footer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
  void _launchUrl(url) async {
  if (!await launchUrl(Uri.parse(url))) throw 'Could not launch $url';
}
  Widget sideBarItem({required Widget child}) {
    switch (widget.idx) {
      case 0:
        {
          child = child;
        }
        break;
      case 1:
        {
          child = const SideBarContainer();
        }
        break;
      case 2:
        {
          child = Column(
            children: [
              LottieBuilder.network(
                  'https://assets2.lottiefiles.com/packages/lf20_lvgmrl5j.json'),
                     RichText( text: TextSpan(text: 'source',style: const TextStyle(
                                ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () =>_launchUrl(''))),
            ],
          );
        }
        break;
      case 3:
        {
          child = Container();
        }
        break;
      case 4:
        {
          child = Container();
        }
        break;
      default:
        const Text('An error occur');
    }

    return child;
  }

  Widget mySelectedWidget({required Widget child}) {
    switch (widget.idx) {
      case 0:
        {
          child = child;
        }
        break;
      case 1:
        {
          child = const Application();
        }
        break;
      case 2:
        {
          child = Apply();
        }
        break;
      case 3:
        {
          child = Contact(
            fontSize: 28,
          );
        }
        break;
      case 4:
        {
          child = About();
        }
        break;
      default:
        const Text('An error occur');
    }

    return child;
  }

  // select widget///////////////////////////////////////////////////////
  double _width({required double child}) {
    switch (widget.idx) {
      case 0:
        {
          child = child;
        }
        break;
      case 1:
        {
          child = 1000;
        }
        break;
      case 2:
        {
          child = 600;
        }
        break;
      case 3:
        {
          child = 1000;
        }
        break;
      case 4:
        {
          child = 1000;
        }
        break;
      default:
        const Text('An error occur');
    }

    return child;
  }

  Widget sideBarItem1({required Widget child}) {
    switch (widget.idx) {
      case 0:
        {
          child = child;
        }
        break;
      case 1:
        {
          child = const SideBarContainer();
        }
        break;
      case 2:
        {
          child = child;
        }
        break;
      case 3:
        {
          child = LottieBuilder.network(
              'https://assets10.lottiefiles.com/packages/lf20_u25cckyh.json');
        }
        break;
      case 4:
        {
          child = Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/hello.png', width: 200),
          );
        }
        break;
      default:
        const Text('An error occur');
    }

    return child;
  }
}

class SideBarContainer extends StatelessWidget {
  const SideBarContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LinkButton(
              icon: SizedBox(
                  child: Image.asset('assets/icon_link/android.png',
                      fit: BoxFit.cover)),
              text: 'Download for android',
              ontap: () {
                StoreRedirect.redirect(androidAppId: "dev.maggev.io"
                    //    iOSAppId: "585027354",
                    );
              }),
          LinkButton(
              icon: SizedBox(
                  child: Image.asset(
                'assets/icon_link/iphone.png',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              )),
              text: 'Download for ios',
              ontap: () {}),
          LinkButton(
              icon: SizedBox(
                  child: Image.asset('assets/icon_link/windows.png',
                      width: 50, height: 50, fit: BoxFit.cover)),
              text: 'Download for windows',
              ontap: () {}),
        ]);
  }
}

class LinkButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback ontap;
  final String text;
  const LinkButton(
      {Key? key, required this.icon, required this.ontap, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 48.0,
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1.0, 2.0),
                    blurRadius: 8.0,
                    spreadRadius: 2.0)
              ]),
          child: Stack(
            children: [
              Row(
                children: [
                  Container(
                      width: 48.0,
                      height: 48.0,
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                      child: Align(alignment: Alignment.center, child: icon)),
                  Expanded(
                      child: Center(
                    child: Shimmer.fromColors(
                      baseColor: Colors.black,
                      highlightColor: Colors.grey.shade300,
                      child: Text(text,
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: Colors.black)),
                    ),
                  )),
                ],
              ),
              SizedBox.expand(
                child: Material(
                  type: MaterialType.transparency,
                  child: InkWell(onTap: ontap),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
