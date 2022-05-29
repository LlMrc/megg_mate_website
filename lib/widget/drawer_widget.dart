

import 'package:flutter/material.dart';
import 'package:megg_mate_website/widget/drawerItem.dart';
import 'package:provider/provider.dart';

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
                buildItemList(items: ItemFirst, isCollapsed: isCollapsed),
                const SizedBox(height: 24),
                const Divider(color: Colors.white24,),
                const SizedBox(height: 24),
                const Spacer(),
              buildItemList(items: ItemSecond, isCollapsed: isCollapsed),
                const SizedBox(
                  height: 32,
                ),
              
                      buildCollapsedIcon(isCollapsed, context),
              ],
            ),
          ),
        ));
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
              'Flutter Logo',
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
          {required List<DrawerItem> items, required bool isCollapsed}) =>
      ListView.separated(
        padding: isCollapsed?EdgeInsets.zero: padding,
          shrinkWrap: true,
          primary: false,
          itemCount: items.length,
          itemBuilder: (context, index) {
            final itemIndex = items[index];
            return buildMenuItems(
              isCollapsed: isCollapsed,
              text: itemIndex.title,
              icon: itemIndex.icon,
              onClick: () => selectedIndex(context, index),
            );
          }, separatorBuilder: (BuildContext context, int index) =>const SizedBox(height: 16,),);

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
      child:isCollapsed
      ?ListTile(title: leading, onTap: onClick,)
      : ListTile(
        leading: leading,
        title: Text(
          text,
          style: TextStyle(color: color, fontSize: 14),
        ),
        onTap: onClick,
      ),
    );
  }

void  selectedIndex(BuildContext context, int index) {
  switch (index) {
    case 0:
      
      break;
    default:
  }
}
}
