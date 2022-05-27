import 'package:flutter/material.dart';

import '../constant/dimension.dart';
import '../promot_screen.dart';
import 'mobile_body.dart';

class TabletteBody extends StatelessWidget {
  const TabletteBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [ PopupMenuItem(

                    value: 1,

                    child:  Row(
                         mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/iconLink/iphone.png',
                           width: 50,
                            fit: BoxFit.cover,),
                            const Text('For ios')
                      ],
                    ),
                  ),
                   PopupMenuItem(
                    value: 1,
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/iconLink/android.png',
                           width: 30,
                              fit: BoxFit.cover),
                                const Text('For android')

                      ],
                    ),
                  ),
                   PopupMenuItem(
                    value: 1,
                    child:Row(
                         mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/iconLink/windows.png',
                            width: 30,
                              fit: BoxFit.cover),
                                const Text('For windows')
                      ],
                      
                    ),
                  ),
                  
            ],

  
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PromotScreen(
                  image: image,
                ),
              ),
              Flexible(
                child: SizedBox(
          height: MediaQuery.of(context).size.height,

                  child: ListView( 
                    primary: false,
                    shrinkWrap: true,
              children: [
          BuildRow(child1: image[2],child: image[1],),
          BuildRow(child: image[0],),
                    
              ], 
          ),
                ),
                  ),
            ]
              
                  ))));
    }
}

class BuildRow extends StatelessWidget {
  final Widget? child;
   final Widget? child1;
   
  const BuildRow({
    Key? key,
     this.child,  this.child1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 200.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 20,
              child: Container(
                width: 400,
                decoration: BoxDecoration(
                    color: const Color(0xff40DFEF),
                    borderRadius: BorderRadius.circular(12)),
                child: child??const Icon(Icons.abc),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(width: 8),
            ),
            Flexible(
              flex: 20,
              child: Container(
                width: 400,
                decoration: BoxDecoration(
                    color: const Color(0xff40DFEF),
                    borderRadius: BorderRadius.circular(12)),
                child: child1?? const Icon(Icons.abc),
              ),
            )
          ],
        ),
      ),
    );
  }
}
