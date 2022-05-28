import 'package:flutter/material.dart';
import 'package:megg_mate_website/responsive/tablete_body.dart';
import 'package:megg_mate_website/widget/About.dart';
import 'package:megg_mate_website/widget/contact.dart';
import 'package:shimmer/shimmer.dart';

import '../constant/color.dart';
import '../constant/dimension.dart';
import '../promot_screen.dart';
import '../widget/display_widget.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  List<Image> _image = image;
  int index = 0;

  @override
  Widget build(BuildContext context) {
  //  Widget thisScreen = mainScreen(image: _image);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: light,
        leading: TextButton(child: const Text('Home'), onPressed: () {}),
        actions: [
          TextButton(
              child: const Text('App'),
              onPressed: () {
                setState(() => index = 2);
              }),
          TextButton(
              child: const Text('About'),
              onPressed: () {
                setState(() => index = 1);
              }),
          TextButton(child: const Text('Contact'), onPressed: () {}),
          IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                child: Icon(Icons.person),
              ))
        ],
        title: customText(text: 'Megg Mate.co'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 200,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height,
                    child: ListView(
                      primary: false,
                      shrinkWrap: true,
                      children: [
                        Container(
                          child:selectedWidget()
                        ),
                        BuildRow(
                          child1: InkWell(
                              onTap: () {
                                setImageList(image);
                              },
                              child: image[2]),
                          child: InkWell(
                              onTap: () {
                                setImageList(audio);
                              },
                              child: audio[1]),
                        ),
                        BuildRow(
                          child: InkWell(
                              onTap: () {
                                setImageList(rapport);
                              },
                              child: rapport[0]),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 241, 227, 227),
                      ),
                      width: 300,
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
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
              Container(
                height: 60,
                color: deepPurple,
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget changeScreen(Widget selectedScreen) {
    return DisplayWidget(child: selectedScreen);
  }

  List<Image> setImageList(List<Image> image) {
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


  // select widget///////////////////////////////////////////////////////

   selectedWidget() {
    switch (index) {
      case 0:
       PromotScreen(carrousel: _image);
        break;
         case 1:
         {
    Contact();
         }
    
      
        break;
         case 2:
        {  About(); }
     
        break;
      default: 
      return PromotScreen(carrousel: _image);
    }

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
