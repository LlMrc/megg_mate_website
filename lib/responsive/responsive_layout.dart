import 'package:flutter/cupertino.dart';
import 'package:megg_mate_website/constant/dimension.dart';
import 'package:megg_mate_website/responsive/desktop_body.dart';
import 'package:megg_mate_website/responsive/mobile_body.dart';
import 'package:megg_mate_website/responsive/tablete_body.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget? mobilBody;
  final Widget? tabletteBody;
  final Widget descktopBody;
  const ResponsiveWidget(
      {Key? key, this.mobilBody, this.tabletteBody, required this.descktopBody})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <= mobileWidth) {
        return MobileBody();
      } else if (constraints.maxWidth > mobileWidth &&
          constraints.maxWidth < desktopWidth) {
        return TabletteBody();
      } else
        return DesktopBody();
    });
  }
}
