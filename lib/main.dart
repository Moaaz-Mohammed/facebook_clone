import 'package:facebook_clone/Models/ContactModel.dart';
import 'package:facebook_clone/Screens/MobileHome.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'Components/Constants.dart';
import 'Models/GroupModel.dart';
import 'Screens/WebHome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScreenTypeLayout(
        mobile: GroupModel(name: 'Group Name', img2: Constants.person4, img1: Constants.person2,),
        desktop: WebHome(),
      ),
    );
  }
}