import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:megg_mate_website/page/desktop_body.dart';
import 'package:megg_mate_website/page/mobile_body.dart';
import 'package:megg_mate_website/page/tablete_body.dart';

import '../constant/dimension.dart';
import '../responsive/responsive_layout.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth <= mobileWidth) {
            return ExpandedHomepage(
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const MobileBody()));
              },
            );
          } else if (constraints.maxWidth > mobileWidth &&
              constraints.maxWidth < desktopWidth) {
            return ExpandedHomepage(ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const TabletteBody()));
            });
          }
          return const DesktopBody();
        }));
  }
}

class ExpandedHomepage extends StatelessWidget {
  final VoidCallback ontap;
  const ExpandedHomepage({
    Key? key,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
              height: 400,
              width: 400,
              child: LottieBuilder.network(
                  'https://assets4.lottiefiles.com/packages/lf20_vxtEG7.json')),
          ElevatedButton(
            onPressed: ontap,
            child: const Text('Get Started'),
          )
        ],
      ),
    );
  }
}
