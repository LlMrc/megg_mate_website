import 'package:flutter/material.dart';
import 'package:megg_mate_website/constant/color.dart';
import 'package:megg_mate_website/page/home.dart';

import '../constant/dimension.dart';
import 'application.dart';
import 'contact.dart';
import '../widget/drawer_widget.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  List<Image> _image = image;

  bool isCollapsed = false;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerWidget(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black87),
          backgroundColor: light,
          actions: [
            PopupMenuButton(
                iconSize: 70,
                icon: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(4)),
                    child: const Center(child: Text('Download'))),
                itemBuilder: (BuildContext context) => [
                      PopupMenuItem(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/icon_link/iphone.png',
                              width: 50,
                              fit: BoxFit.cover,
                            ),
                            const Text('For ios')
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/icon_link/android.png',
                                width: 30, fit: BoxFit.cover),
                            const Text('For android')
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/icon_link/windows.png',
                                width: 30, fit: BoxFit.cover),
                            const Text('For windows')
                          ],
                        ),
                      ),
                    ]),
          ],
          title:  Text('Mobile', style: TextStyle(color: Colors.grey[300]),),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisSize: MainAxisSize.max, 
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: mySelectedWidget(
          child: Application(carrousel: _image),
        ),
          ),
          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
               shrinkWrap: true,
              children: [
                BuildListView(
                  image: image[1],
                  ontap: () {
                    setImageList(image);
                         mobileIndex = 1;
                  },
                  title: 'Meggev PDF',
                  subtitle: 'Read book while enjoying your favorite song',
                ),
                BuildListView(
                  image: audio[1],
                  ontap: () {
                    setImageList(audio);
                         mobileIndex = 1;
                  },
                  title: 'Audio Player & Photo editor',
                  subtitle: 'Play audio, edit and share image',
                ),
                BuildListView(
                  image: rapport[1],
                  ontap: () {
                    setImageList(rapport);
                    mobileIndex = 1;
                  },
                  title: 'Rapport',
                  subtitle: 'Organize and optimize your task in the minitery',
                ),
              ],
            ),
          )
        ]));
  }

  Widget mySelectedWidget({required Widget child}) {
    switch (mobileIndex) {
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
          child = Contact();
        }
        break;
      default:
        const Text('An error occur');
    }

    return child;
  }

  List<Image> setImageList(List<Image> image) {
    setState(() => _image = image);
    return image;
  }
}

class BuildListView extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget image;
  final VoidCallback ontap;
  const BuildListView({
    Key? key,
    required this.ontap,
    required this.image,
    required this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        onTap: ontap,
        child: Card(
        
          elevation: 4,
          color: light,
         shape: Border.all( color: Colors.grey),
          shadowColor: Colors.black,
          child: SizedBox(
            width: 260,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 100,
                    width: 150,
                    child:
                   Column(children: [
                     Text(
                     title,
                     overflow: TextOverflow.fade,
                     style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                    height: 8,),
               Text(
              subtitle??'',
            maxLines: 4,
               overflow: TextOverflow.ellipsis,
            ),
                  ],)),
                ),
                        
             Flexible(child: image),
              ],
            )),
        ),
      ),
    );
  }
}
