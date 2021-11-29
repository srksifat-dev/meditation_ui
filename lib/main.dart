import 'package:flutter/material.dart';
import 'package:meditation/model/bottomNavigationContent.dart';
import 'package:meditation/model/feature.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:meditation/theme/color.dart';
import 'package:meditation/theme/type.dart';

import 'view/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}






