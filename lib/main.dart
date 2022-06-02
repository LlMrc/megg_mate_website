import 'package:flutter/material.dart';
import 'package:megg_mate_website/constant/color.dart';
import 'package:megg_mate_website/widget/app_bar_button.dart';
import 'package:provider/provider.dart';

import 'MyHomePage.dart';
import 'route/navigator_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
    create: (context)=> NavigatonProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
        home: const MyHomePage(),
      ),
    );
  }
}
