import 'package:flutter/material.dart';
import 'package:megg_mate_website/responsive/tablete_body.dart';
import 'package:megg_mate_website/page/About.dart';
import 'package:megg_mate_website/page/contact.dart';
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
        leading: TextButton(
            child: const Text('Home', style: TextStyle(color: Colors.black)),
            onPressed: () {}),
        actions: [
          TextButton(
              child: const Text('App', style: TextStyle(color: Colors.black)),
              onPressed: () {
                setState(() => index = 0);
              }),
          TextButton(
              child: const Text('About', style: TextStyle(color: Colors.black)),
              onPressed: () {
                setState(() => index = 1);
              }),
          TextButton(
              child: const Text(
                'Contact',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                setState(() => index = 2);
              }),
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Flexible(
                    child: SizedBox(
                      width: 50,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      children: [
                        mySelectedWidget(
                          child: PromotScreen(carrousel: _image),
                        ),
                    const  SizedBox(height: 20,),
                        Flexible(
                        
                          child: SizedBox(
                            height: 100,
                            child: ListView.builder(
                              shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    
                                    decoration: BoxDecoration(
                                           color: blue,
                                      borderRadius: BorderRadius.circular(25)
                                    ),
                                  height: 100,
                                    width: 200,                              
                             
                                  ),
                                );
                              },
                        
                              //      BuildRow(
                              //   child1: InkWell(
                              //       onTap: () {
                              //         setImageList(image);
                              //       },
                              //       child: image[2]),
                              //   child: InkWell(
                              //       onTap: () {
                              //         setImageList(audio);
                              //       },
                              //       child: audio[1]),
                              // ),
                              // BuildRow(
                              //   child: InkWell(
                              //       onTap: () {
                              //         setImageList(rapport);
                              //       },
                              //       child: rapport[0]),
                              // ),
                            ),
                          ),
                        )
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

  Widget mySelectedWidget({required Widget child}) {
    switch (index) {
      case 0:
        {
          child = child;
        }
        break;
      case 1:
        {
          child = About();
        }
        break;
      case 2:
        {
          child = Contact();
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
