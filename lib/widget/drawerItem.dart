import 'package:flutter/material.dart';

class DrawerItem {
  final String title;
  final IconData icon;

  DrawerItem({required this.title, required this.icon});
}

final ItemFirst = [
  DrawerItem(icon: Icons.home , title: 'title 1'),
   DrawerItem(icon: Icons.people, title: 'title 2'),
    DrawerItem(icon: Icons.settings, title: 'title 3'),
     DrawerItem(icon:Icons.abc , title: 'title 4'),
];
final ItemSecond = [
  DrawerItem(icon: Icons.home , title: 'title 1'),
   DrawerItem(icon: Icons.people, title: 'title 2'),

];