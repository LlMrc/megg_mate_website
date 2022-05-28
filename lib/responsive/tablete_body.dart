import 'package:flutter/material.dart';

import '../constant/color.dart';
import '../constant/dimension.dart';
import '../promot_screen.dart';
import 'mobile_body.dart';

class TabletteBody extends StatefulWidget {
  const TabletteBody({Key? key}) : super(key: key);

  @override
  State<TabletteBody> createState() => _TabletteBodyState();
}

class _TabletteBodyState extends State<TabletteBody> {
   List<Image> _image = image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: light,
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          actions: [
            MaterialButton(onPressed: (){}, child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/icon_link/iphone.png',
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                  const Text('For ios')
                ],
              )),
              MaterialButton(onPressed: (){ },
               child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/icon_link/android.png',
                      width: 30, fit: BoxFit.cover),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: Text('For android'),
                  )])),
                  MaterialButton(onPressed: (){},
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/icon_link/windows.png',
                      width: 30, fit: BoxFit.cover),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: Text('For windows'),
                  )
                ],
     
                
              )),
          
       
       IconButton(onPressed: (){}, icon: const CircleAvatar(child: Icon(Icons.person),))
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
                child: Column(mainAxisSize: MainAxisSize.min, children: [
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: PromotScreen(carrousel: _image,),
              ),
              Flexible(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ListView(
                    primary: false,
                    shrinkWrap: true,
                    children: [
                      BuildRow(
                        child1: InkWell(
                            onTap: () {
                              setImageList(image);
                           
                            },
                            child: image[2]),
                        child: InkWell(
                            onTap: () {
                              setImageList(audio);
                             
                            },
                            child: audio[1]),
                      ),
                      BuildRow(
                        child: InkWell(
                            onTap: () {
                              setImageList(rapport);
                            },
                            child: rapport[0]),
                      ),
                    ],
                  ),
                ),
              ),
            ]))),
            backgroundColor: Colors.white,);
  }

  List<Image> setImageList(List<Image> image) {
    setState(() => _image = image);
    return image;
  }
}

class BuildRow extends StatelessWidget {
  final Widget? child;
  final Widget? child1;

  const BuildRow({
    Key? key,
    this.child,
    this.child1,
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
                    color: blue,
                    borderRadius: BorderRadius.circular(12)),
                child: child ?? const Icon(Icons.abc),
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
                    color: blue,
                    borderRadius: BorderRadius.circular(12)),
                child: child1 ?? const Icon(Icons.abc),
              ),
            )
          ],
        ),
      ),
    );
  }
}
