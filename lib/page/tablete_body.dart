import 'package:flutter/material.dart';
import 'package:store_redirect/store_redirect.dart';

import '../constant/color.dart';
import '../constant/dimension.dart';
import 'apply.dart';
import 'application.dart';
import 'about.dart';
import 'contact.dart';
import '../widget/drawer_widget.dart';

class TabletteBody extends StatefulWidget {
  const TabletteBody({Key? key}) : super(key: key);

  @override
  State<TabletteBody> createState() => _TabletteBodyState();
}

class _TabletteBodyState extends State<TabletteBody> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const DrawerWidget(),
        appBar: AppBar(
          backgroundColor: light,
          iconTheme: const IconThemeData(color: Colors.black87),
          actions: [
            MaterialButton(
                onPressed: () {},
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
                )),
            MaterialButton(
                onPressed: () =>      StoreRedirect.redirect(
                          androidAppId: "dev.maggev.io",
                   //    iOSAppId: "585027354",
                         ),
                             
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/icon_link/android.png',
                          width: 30, fit: BoxFit.cover),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Text('For android'),
                      )
                    ])),
            MaterialButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/icon_link/windows.png',
                        width: 30, fit: BoxFit.cover),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: Text('For windows'),
                    )
                  ],
                )),
            IconButton(
                onPressed: () {},
                icon: const CircleAvatar(
                  child: Icon(Icons.person),
                ))
          ],
        ),
        body: const Application(),
        
        backgroundColor: Colors.white,
      ),
    );
  }

  


  


 
}


