import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:megg_mate_website/page/aply.dart';
import 'package:megg_mate_website/page/home.dart';
import 'package:megg_mate_website/page/tablete_body.dart';
import 'package:megg_mate_website/page/about.dart';
import 'package:megg_mate_website/page/contact.dart';
import 'package:shimmer/shimmer.dart';

import '../constant/color.dart';
import '../constant/dimension.dart';

import '../widget/app_bar_button.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  List<Image> _image = image;
  int index = 0;

  bool _isvisible = true;
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
                height: 60,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                   //   customText(text: 'Megg Mate.co'),
                      SizedBox(
                          child: Row(
                     
                        children: [
                          DisplayWidget(
                            text: 'Home',
                            onPressed: () {
                              _isvisible = false;
                              setState(() => index = 0);
                            },
                          ),
                          DisplayWidget(
                            text: 'APPS',
                            onPressed: () {
                              _isvisible = false;
                              setState(() => index = 1);
                            },
                          ),
                          const SizedBox(width: 200),
                        ],
                      )),
                      SizedBox(
                        child: Row(children: [
                          DisplayWidget(
                            text: 'ABOUT',
                            onPressed: () {
                              _isvisible = false;
                              setState(() => index = 2);
                            },
                          ),
                          DisplayWidget(
                            text: 'APPLY',
                            onPressed: () {
                              _isvisible = false;
                              setState(() => index = 4);
                            },
                          ),
                          DisplayWidget(
                            text: 'CONTACT',
                            onPressed: () {
                              _isvisible = false;
                              setState(() => index = 3);
                            },
                          ),
                          
                     
                        ]),
                      )
                    ])),
           
            Expanded(
              child: SizedBox(
                height: 900,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Visibility(
                        visible: _isvisible,
                        child: const SizedBox(
                          width: 100,
                        )),
                    SizedBox(
                      width: 1000,
                      height: MediaQuery.of(context).size.height,
                      child: ListView(
                       shrinkWrap: true,
                        children: [
                 const SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: mySelectedWidget(
                              child: Flexible(
                child: SizedBox(
                    height: 400,
                    width: 400,
                    child: LottieBuilder.network(
                        'https://assets4.lottiefiles.com/packages/lf20_vxtEG7.json')
                        ),
                         )),
                          ),
                 const SizedBox(height: 40),
                          Container(
                            alignment: Alignment.center,
                            height: 100,
                            child: ListView(
                              primary: false,
                              controller: _controller,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                children: [
                                  IconButton(onPressed: (){
                                    _controller.animateTo(_controller.position.maxScrollExtent,
                                     duration: const Duration(milliseconds: 200),
                                      curve: Curves.bounceIn);
                                  },
                                   icon:  Icon(Icons.arrow_back_ios_new_rounded, 
                                   size: 50, 
                                   shadows: [
                                      Shadow(
                                     blurRadius: 2,
                                     color: Colors.grey[300]!,
                                     offset: const Offset(-2,-2)
                                   ),
                                     
                                     const Shadow(
                                     blurRadius: 4,
                                     color: Colors.black,
                                     offset: Offset(2,2)
                                   ),
                                   ],
                                      
                                   color: Colors.white,)),
                                   const SizedBox(width: 10,),
                                  imageContainer(image[2], () {
                                    setWidget(image);
                                    index = 1;
                                  }),
                                  imageContainer(audio[1], () {
                                    setWidget(audio);
                                    index = 1;
                                  }),
                                  imageContainer(rapport[2], () {
                                    setWidget(rapport);
                                    index = 1;
                                  }),
                                                   
                                   Padding(
                                     padding: const EdgeInsets.only(right: 12.0),
                                     child: IconButton(onPressed: (){
                                            _controller.animateTo(    _controller.position.minScrollExtent,
                                       duration: const Duration(milliseconds: 200),
                                        curve: Curves.bounceInOut);
                                        },
                                     icon:  Icon(Icons.arrow_forward_ios_rounded,
                                       color: Colors.white,
                                       size: 50, 
                                     shadows: [
                                        Shadow(
                                       blurRadius: 2,
                                       color: Colors.grey[300]!,
                                       offset: const Offset(-2,-2)
                                     ),
                                       
                                       const Shadow(
                                       blurRadius: 4,
                                       color: Colors.black,
                                       offset: Offset(2,2)
                                     ),
                                     ],
                                     )),
                                   )
                                ]),
                          ),
                            
                        ],
                      ),
                    ),
                  Expanded(
                    child: Container(            
                                 decoration: BoxDecoration(
                                 border: Border.all(color: Colors.grey.shade600),
                                   borderRadius: BorderRadius.circular(12),
                                   color: const Color.fromARGB(255, 241, 227, 227)),
                                 width: 300,
                                 height: MediaQuery.of(context).size.height/2,
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                     children: [
                                       LinkButton(
                                           icon: SizedBox(
                                               child: Image.asset(
                                                   'assets/icon_link/android.png',
                                                   fit: BoxFit.cover)),
                                           text: 'Download for android',
                                           ontap: () {}),
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
                                               child: Image.asset(
                                                   'assets/icon_link/windows.png',
                                                   width: 50,
                                                   height: 50,
                                                   fit: BoxFit.cover)),
                                           text: 'Download for windows',
                                           ontap: () {}),
                                     ]),
                               ),
                  ),
                  ],
                ),
              ),
            ),
             Container(
              height: 60,
              color: deepPurple,
            ),
          ],
        ),
        backgroundColor: Colors.white
      ),
    );
  }

  Widget imageContainer(Image image, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration:
            BoxDecoration(color: blue, borderRadius: BorderRadius.circular(25)),
        height: 100,
        width: 200,
        child: InkWell(onTap: onTap, child: image),
      ),
    );
  }

  List<Image> setWidget(List<Image> image) {
    setState(() => _image = image);
    return image;
  }

  Widget customText({required String text}) {
    return Text(text,
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(color: Colors.black));
  }

  Widget mySelectedWidget({required Widget child}) {
    switch (index) {
      case 0:
        {
          child = Home();
        }
        break;
      case 1:
        {
          child = child;
        }
        break;
      case 2:
        {
          child = About();
        }
        break;
      case 3:
        {
          child = Contact();
        }
        break;
      case 4:
        {
          child = Blog();
        }
        break;
      default:
        const Text('An error occur');
    }

    return child;
  }

  // select widget///////////////////////////////////////////////////////

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
