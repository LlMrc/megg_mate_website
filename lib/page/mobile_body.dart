import 'package:flutter/material.dart';

import 'package:megg_mate_website/constant/color.dart';

import 'package:store_redirect/store_redirect.dart';


import 'application.dart';

import '../widget/drawer_widget.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  bool isCollapsed = false;

  var index = 0;

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
                        onTap: () => StoreRedirect.redirect(
                          androidAppId: "dev.maggev.io",
                          //    iOSAppId: "585027354",
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
          title: Text(
            'Mobile',
            style: TextStyle(color: Colors.grey[300]),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: SingleChildScrollView(child: Application()),
        ));
  }
}
