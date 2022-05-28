import 'package:flutter/material.dart';

import '../constant/dimension.dart';
import '../promot_screen.dart';

class MobileBody extends StatefulWidget {
  MobileBody({Key? key}) : super(key: key);

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  List<Image> _image = image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
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
                        value: 1,
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
            padding: const EdgeInsets.all(8.0),
            child: PromotScreen(
              image: _image,
            ),
          ),
          Flexible(
            child: ListView(
              shrinkWrap: true,
              children: [
                buildListView(
                  image: image[1],
                  ontap: () => setImageList(image), title: 'Meggev PDF', subtitle: 'Read book while enjoying your favorite song',
                ),
                buildListView(
                    image: audio[1], ontap: () => setImageList(audio), title: 'Audio Player & Photo editor', subtitle: 'Play audio, edit and share image',),
                buildListView(
                    image: rapport[1], ontap: () => setImageList(rapport), title: 'Rapport', subtitle: 'Organize and optimize your task in the minitery',)
              ],
            ),
          )
        ])));
  }

  List<Image> setImageList(List<Image> image) {
    setState(() => _image = image);
    return image;
  }
}

class buildListView extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Image image;
  final VoidCallback ontap;
  const buildListView({
    Key? key,
    required this.ontap,
    required this.image, required this.title, this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shadowColor: Colors.grey,
        child: ListTile(
          subtitle:  Text(subtitle??'',overflow: TextOverflow.fade,),
          leading: image,
          hoverColor: Colors.purple.shade50,
          title: Text(title, overflow: TextOverflow.fade,),
          onTap: ontap,
        ),
      ),
    );
  }
}
