import 'package:flutter/material.dart';

class DisplayWidget extends StatelessWidget {
  final Widget child;
  const DisplayWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer();
  }
}
