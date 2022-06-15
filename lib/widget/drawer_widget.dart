import 'package:flutter/material.dart';
import 'package:megg_mate_website/constant/dimension.dart';
import 'package:megg_mate_website/page/application.dart';
import 'package:megg_mate_website/page/apply.dart';
import 'package:megg_mate_website/responsive/home.dart';
import 'package:megg_mate_website/widget/drawerItem.dart';
import 'package:provider/provider.dart';

import '../page/About.dart';
import '../page/contact.dart';
import '../route/navigator_provider.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NavigatonProvider>(context, listen: false);
    final isCollapsed = provider.isCollapsed;
    final safeArea =
        EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top);
    return SizedBox(
      width: isCollapsed ? MediaQuery.of(context).size.width * 0.2 : null,
      child: Drawer(
        child: Container(
          color: const Color(0xff2E4C6D),
          child: Column(
          
            children: [
              Container(
                  color: Colors.white12,
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(vertical: 24).add(safeArea),
                  child: buildHeader(isCollapsed)),
              buildItemList(items: itemFirst, isCollapsed: isCollapsed),
              const Expanded(child: SizedBox(height: 24)),
              const Divider(
                color: Colors.white24,
              ),
              const Expanded(child: SizedBox(height: 24)),
              const Spacer(),
              buildItemList(
                  indexOffset: itemFirst.length,
                  items: itemSecond,
                  isCollapsed: isCollapsed),
              const Expanded(
                child: SizedBox(
                  height: 32,
                ),
              ),
              Expanded(child: buildCollapsedIcon(isCollapsed, context)),
            ],
          ),
        ),
      ),
    );
  }

  buildHeader(bool isCollapsed) => isCollapsed
      ? const FlutterLogo(
          size: 46,
        )
      : Row(
          children: const [
            SizedBox(width: 24),
            FlutterLogo(
              size: 48,
            ),
            SizedBox(width: 16),
            Text(
              'MAGG MATE',
              style: TextStyle(fontSize: 32, color: Colors.white),
            )
          ],
        );

  Widget buildCollapsedIcon(bool isCollapsed, context) {
    const double size = 52;
    final icon =
        isCollapsed ? Icons.arrow_forward_ios : Icons.arrow_back_ios_new;
    final alignment = isCollapsed ? Alignment.center : Alignment.centerRight;
    final margin = isCollapsed ? null : const EdgeInsets.only(right: 14);
    final widht = isCollapsed ? double.infinity : size;
    return Container(
      alignment: alignment,
      margin: margin,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          child: SizedBox(
            height: size,
            width: widht,
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          onTap: () {
            final provider =
                Provider.of<NavigatonProvider>(context, listen: false);

            setState(() {
              provider.toggleCollaps();
            });
          },
        ),
      ),
    );
  }

  Widget buildItemList(
          {required List<DrawerItem> items,
          required bool isCollapsed,
          int indexOffset = 0}) =>
      ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        padding: isCollapsed ? EdgeInsets.zero : padding,
        shrinkWrap: true,
        primary: false,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final itemIndex = items[index];

          return buildMenuItems(
              isCollapsed: isCollapsed,
              text: itemIndex.title,
              icon: itemIndex.icon,
              onClick: () {
                setState(() {
                  selectedIndex(context, indexOffset + index);
                });
              });
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          height: 16,
        ),
      );

  Widget buildMenuItems(
      {required bool isCollapsed,
      required String text,
      required IconData icon,
      required VoidCallback onClick}) {
    const color = Colors.white;
    final leading = Icon(
      icon,
      color: Colors.white,
    );
    return Material(
      color: Colors.transparent,
      child: isCollapsed
          ? ListTile(
              title: leading,
              onTap: onClick,
            )
          : ListTile(
              leading: leading,
              title: Text(
                text,
                style: const TextStyle(color: color, fontSize: 14),
              ),
              onTap: onClick,
            ),
    );
  }

  void selectedIndex(context, int index) {
  
    // ignore: prefer_function_declarations_over_variables
    final navigateTo = (page) =>
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => page));
    
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        navigateTo(const Home());
        break;
      case 1:
        navigateTo( const Application());
        break;
      case 2:
        navigateTo(About());
        break;
      case 3:
        navigateTo( Apply());
        break;
      case 4:
        navigateTo( Contact(fontSize: 18,));
        break;

      default:
        Home();
    }
  }
}
