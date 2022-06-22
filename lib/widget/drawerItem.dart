import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerItem {
  final String title;
  final IconData icon;

  DrawerItem({required this.title, required this.icon});
}

final itemFirst = [
  DrawerItem(icon: FontAwesomeIcons.houseChimney , title: 'HOME '),
   DrawerItem(icon: FontAwesomeIcons.android, title: 'APPLICATION'),
    DrawerItem(icon: FontAwesomeIcons.addressBook, title: 'ABOUT'),
   
];
final itemSecond = [
    DrawerItem(icon:FontAwesomeIcons.fileSignature , title: 'APPLY'),
  DrawerItem(icon: FontAwesomeIcons.solidMessage , title: 'CONTACT '),
   

];