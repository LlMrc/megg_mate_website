import 'package:flutter/material.dart';


import '../constant/color.dart';
import '../widget/drawer_widget.dart';
import 'main_page.dart';

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
                onPressed: () {},
                             
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
        body: const MainPage(),
        
        backgroundColor: Colors.white,
      ),
    );
  }

  


  


 
}


