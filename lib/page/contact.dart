import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
      height: 350,
      width: 500,
      child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: LottieBuilder.network('https://assets9.lottiefiles.com/packages/lf20_xntsaeql.json')),
          Container(
          
            width: 200,
            child: TextFormField(
              maxLines: 1,
              decoration: const InputDecoration(
              border: OutlineInputBorder(),
              label: Text('mail'),
              hintMaxLines: 1
            ),),
          ),
            const SizedBox(height: 10),
            Container(
              width: 200,
              child: TextFormField(
              maxLines: 1,
              decoration: const InputDecoration(
              border: OutlineInputBorder(),
              label: Text('object'),
              hintMaxLines: 1
          ),),
            ),
          const SizedBox(height: 20),
            TextFormField(
              maxLines: 5,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintMaxLines: 10,
                label: Text('Message')
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
         
                  children: [
                    ElevatedButton(child: const Text('Send'), onPressed:(){}),
                        const SizedBox(width: 10),
                      ElevatedButton(child: const Text('Cancel'), onPressed:(){}),
                  ],
                ),
              ),
        ],
      ),
    ));
  }
}