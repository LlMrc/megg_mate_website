import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megg_mate_website/responsive/tablete_body.dart';

import '../constant/dimension.dart';
import '../promot_screen.dart';
import 'mobile_body.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desktop'),   centerTitle: true,
      ),
      body:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: PromotScreen(image: image),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: ListView(
                      
                            shrinkWrap: true,          
                              children: [ 
                                 BuildRow(child1: image[2],child: image[1],),
                                 BuildRow(child: image[0],),
                              ]),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                color: Colors.blue,
                ),
                width: 300,
                child: Column(
                  children: [
                    
                  ],
                ),
              )
            )
          ],
          ),
          ),
    );
  }
}
