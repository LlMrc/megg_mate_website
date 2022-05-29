import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megg_mate_website/responsive/desktop_body.dart';
import 'package:megg_mate_website/responsive/mobile_body.dart';
import 'package:megg_mate_website/responsive/responsive_layout.dart';
import 'package:megg_mate_website/responsive/tablete_body.dart';

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
    return  const ResponsiveWidget(
      descktopBody: DesktopBody(),
      tabletteBody: TabletteBody(),
      mobilBody: MobileBody(),
    );
  }
}
