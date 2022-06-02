import 'package:flutter/material.dart';

class DrawerItem {
  final String title;
  final IconData icon;

  DrawerItem({required this.title, required this.icon});
}

final itemFirst = [
  DrawerItem(icon: Icons.home , title: 'HOME '),
   DrawerItem(icon: Icons.adb_sharp, title: 'APPLICATION'),
    DrawerItem(icon: Icons.add_chart_sharp, title: 'ABOUT'),
   
];
final itemSecond = [
    DrawerItem(icon:Icons.flag , title: 'APPLY'),
  DrawerItem(icon: Icons.message , title: 'CONTACT '),
   

];