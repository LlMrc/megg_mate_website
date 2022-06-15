import 'package:flutter/material.dart';
import 'package:megg_mate_website/constant/color.dart';



class BuildRow extends StatelessWidget {
  final Widget? child;
  final VoidCallback ontap;

  const BuildRow({
    Key? key,
    this.child,
  required  this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
     alignment: Alignment.center,
       
        width: 150,
        decoration: BoxDecoration(
             color: blue,
          borderRadius: BorderRadius.circular(24)),
        child: child,
      ),
    );
  }
}