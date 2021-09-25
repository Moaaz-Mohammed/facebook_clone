import 'package:facebook_clone/Components/Cubit/Cubit.dart';
import 'package:facebook_clone/WebHomeWidgets/Posts.dart';
import 'package:facebook_clone/WebHomeWidgets/Rooms.dart';
import 'package:facebook_clone/WebHomeWidgets/StatusBar.dart';
import 'package:facebook_clone/WebHomeWidgets/Stories.dart';
import 'package:flutter/material.dart';

class CenterArea extends StatelessWidget {
  const CenterArea({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.6,
      height: height,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Stories
            Stories(),
            // Status bar
            StatusBar(),
            // Rooms
            Rooms(),
            //Posts
            AppCubit.get(context).isLoaded
                ? Center(
                child: Container(
                    width: width * 0.6,
                    child: LinearProgressIndicator()))
                : Posts(),
          ],
        ),
      ),
    );
  }
}
