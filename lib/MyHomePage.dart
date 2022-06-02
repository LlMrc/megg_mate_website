import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megg_mate_website/page/desktop_body.dart';
import 'package:megg_mate_website/page/home.dart';
import 'package:megg_mate_website/page/mobile_body.dart';
import 'package:megg_mate_website/responsive/responsive_layout.dart';
import 'package:megg_mate_website/page/tablete_body.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  const Home(
      // descktopBody: DesktopBody(),
      // tabletteBody: TabletteBody(),
      // mobilBody: MobileBody(),
    );
  }
}
