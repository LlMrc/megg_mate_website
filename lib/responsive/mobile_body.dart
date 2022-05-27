import 'package:flutter/material.dart';

import '../promot_screen.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mobile'),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const PromotScreen(),
              Flexible(
                child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          color: const Color(0xff40DFEF),
                          height: 150,
                        ),
                      );
                    }),
              )
            ],
          ),
        ));
  }
}


