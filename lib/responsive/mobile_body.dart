import 'package:flutter/material.dart';

import '../constant/dimension.dart';
import '../promot_screen.dart';

class MobileBody extends StatelessWidget {
  MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            actions: [
            PopupMenuButton(
              iconSize: 70,
              icon:Container(
                height: 
                40,
               decoration: BoxDecoration(
                 color: Colors.blue,
                 borderRadius: BorderRadius.circular(4)
               ),
                child: const Center(child: Text('Download'))),
              itemBuilder: (BuildContext context) =>
            [
               PopupMenuItem(

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
                  
            ]

             ),
          
        ],
          title: const Text('Mobile'),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
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
                child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: image.length,
                    itemBuilder: (context, index) {
                      var imageBody = image[index];
                      return Container(
                        height: 90,
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          shadowColor: Colors.grey,
                          child: ListTile(
                            subtitle: const Text('subtitle'),
                            leading: imageBody,
                          hoverColor: Colors.purple.shade100,
                            title: const Text('image to show'),
                            onTap: () {},
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ));
  }

 
}
