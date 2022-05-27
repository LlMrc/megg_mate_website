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
     
        title: const Text('Desktop'),
        centerTitle: true,
      ),
      body: Padding(
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
                      child: ListView(shrinkWrap: true, children: [
                        BuildRow(
                          child1: image[2],
                          child: image[1],
                        ),
                        BuildRow(
                          child: image[0],
                        ),
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
                    color: const Color.fromARGB(255, 241, 227, 227),
                  ),
                  width: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                       LinkButton(icon: SizedBox(child: Image.asset('assets/iconLink/iphone.png',
                       width: 50,
                       height: 50,
                        fit: BoxFit.cover,)),
                         text: 'Download for ios', ontap: () {  }),
                        LinkButton(icon: SizedBox(child: Image.asset('assets/iconLink/android.png', 
                       
                         fit: BoxFit.cover)), text: 'Download for android', ontap: () {  }),
                         LinkButton(icon: SizedBox(child: Image.asset('assets/iconLink/windows.png',
                         width: 50,
                       height: 50,
                          fit: BoxFit.cover)), text: 'Download for windows', ontap: () {  }),
                    ]
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class LinkButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback ontap;
  final String text;
  const LinkButton({Key? key, required this.icon, required this.ontap, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 48.0,
        child: Container(
        
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1.0, 2.0),
                    blurRadius: 8.0,
                    spreadRadius: 2.0)
              ]),
          child: Stack(
            children: [
              Row(
                children: [
                  Container(
                      width: 48.0,
                      height: 48.0,
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
                     
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                      child:  Align(
                          alignment: Alignment.center,
                          child: icon)),
                  Expanded(
                      child: Center(
                    child: Text(text,
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: Colors.black)),
                  )),
                ],
              ),
              SizedBox.expand(
                child: Material(
                  type: MaterialType.transparency,
                  child: InkWell(onTap: ontap),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
