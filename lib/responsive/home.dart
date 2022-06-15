import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:megg_mate_website/page/desktop_body.dart';
import 'package:megg_mate_website/page/mobile_body.dart';
import 'package:megg_mate_website/page/tablete_body.dart';
import 'package:megg_mate_website/responsive/welcom_page.dart';

import '../constant/dimension.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: LayoutBuilder(builder: (context, constraints) {
          
          if (constraints.maxWidth <= mobileWidth) {
            return WelcomPage(
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const MobileBody()));
              },
            );
          } else if (constraints.maxWidth > mobileWidth &&
              constraints.maxWidth < desktopWidth) {
            return WelcomPage(ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const TabletteBody()));
            });
          }
          return  DesktopBody();
        }));
  }
}

