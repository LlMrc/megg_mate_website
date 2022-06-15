import 'package:flutter/material.dart';
import 'package:megg_mate_website/constant/color.dart';

class DisplayWidget extends StatefulWidget {

  final String text;
 final  VoidCallback onPressed;
    const DisplayWidget({Key? key, 

  required this.text, required this.onPressed})
      : super(key: key);

  @override
  State<DisplayWidget> createState() => _DisplayWidgetState();
}

class _DisplayWidgetState extends State<DisplayWidget>{
  bool isSelected = false;

 
  @override
  Widget build(BuildContext context) {
    Offset distance = isSelected ? const Offset(1, 1) : const Offset(4, 4);
    double blur =  isSelected ? 1.0 : 4;
    return GestureDetector(
        onTap: () => setState(() =>  isSelected = ! isSelected),
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              width: 80,
              height: 35,
              decoration: BoxDecoration(
                  color: light,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: blur,
                      spreadRadius: 1,
                      offset: -distance,
                      color: Colors.white,
                    ),
                    BoxShadow(
                        blurRadius: blur,
                        offset: distance,
                        color: Colors.grey[400]!),
                  ]),
              child: TextButton(
                  onPressed: widget.onPressed,
                  child: Text(
                    widget.text,
                    style: const TextStyle(color: Colors.black),
                  )),
            )));
  }
}
