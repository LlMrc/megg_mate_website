import 'package:flutter/material.dart';
import 'package:megg_mate_website/constant/color.dart';

class BuildListView extends StatelessWidget {
  final Widget image;
  final VoidCallback ontap;
  final String title;
  final String description;
  const BuildListView({Key? key, required this.image, required this.ontap, required this.title, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          
        
             width: 300,
          child: Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(12)),
            color: light,
            elevation: 4,
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(   
                        width: 200,   
                    child: Column(
             
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:  [
                        Text(title, overflow: TextOverflow.fade, maxLines: 1, style:const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),), 
                       const SizedBox(height: 4,),
                        Text(description, maxLines: 4,  overflow: TextOverflow.ellipsis,)],
                    ),
                  ),
                ),
                Expanded(
                  child: image,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
