import 'package:flutter/material.dart';
import 'package:megg_mate_website/constant/color.dart';

import '../constant/dimension.dart';
import '../promot_screen.dart';
import '../page/About.dart';
import '../page/contact.dart';
import '../widget/drawer_widget.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  List<Image> _image = image;
  int index = 0;
  bool isCollapsed = false;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      drawer: const DrawerWidget(),
        appBar: AppBar(
           iconTheme:const IconThemeData(color: Colors.black87),
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
                        value: 1,
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
          title: const Text('Mobile'),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: PromotScreen(
              carrousel: _image,
            ),
          ),
          Flexible(
            child: ListView(
              shrinkWrap: true,
              children: [
                buildListView(
                  image: image[1],
                  ontap: () => setImageList(image),
                  title: 'Meggev PDF',
                  subtitle: 'Read book while enjoying your favorite song',
                ),
                buildListView(
                  image: audio[1],
                  ontap: () => setImageList(audio),
                  title: 'Audio Player & Photo editor',
                  subtitle: 'Play audio, edit and share image',
                ),
                buildListView(
                  image: rapport[1],
                  ontap: () => setImageList(rapport),
                  title: 'Rapport',
                  subtitle: 'Organize and optimize your task in the minitery',
                )
              ],
            ),
          )
        ])));
  }

  List<Image> setImageList(List<Image> image) {
    setState(() => _image = image);
    return image;
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
}

class buildListView extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget image;
  final VoidCallback ontap;
  const buildListView({
    Key? key,
    required this.ontap,
    required this.image,
    required this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shadowColor: Colors.black,
        child: ListTile(
          subtitle: Text(
            subtitle ?? '',
            overflow: TextOverflow.fade,
          ),
          leading: image,
          hoverColor: Colors.purple.shade50,
          title: Text(
            title,
            overflow: TextOverflow.fade,
          ),
          onTap: ontap,
        ),
      ),
    );
  }
}
