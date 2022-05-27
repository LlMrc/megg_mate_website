
import 'package:flutter/material.dart';

import '../promot_screen.dart';
import 'mobile_body.dart';

class TabletteBody extends StatelessWidget {
  const TabletteBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
           title: const Text('tablette'),   centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
                height: 350,
              child:  PromotScreen(
              ),
             ),
            Expanded(
              child: ListView(
                    shrinkWrap: true,
                    
                      children:const [ 
                       BuildRow(),
                          BuildRow(),
                           BuildRow(),
                             BuildRow(),
                   

                   
                  
                      ]),
            )
          ],
        ),
      ),
    );
  }
}

class BuildRow extends StatelessWidget {
  const BuildRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
     maxHeight: 200.0,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,
      
           mainAxisAlignment: MainAxisAlignment.center,
        children: [
           
       const BuildContainer(),
        Flexible(
          flex: 1,
            child: Container( width: 8),
          ),
           const BuildContainer(),
        ],
      ),
    ),
                    );
  }
}

class BuildContainer extends StatelessWidget {
  const BuildContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
       flex: 20,
      child: Container(
         decoration: BoxDecoration(
             color: const Color(0xff40DFEF),
           borderRadius: BorderRadius.circular(12)
         ),
      
                           
      ),
    );
  }
}
