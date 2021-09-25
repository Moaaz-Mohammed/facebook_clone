import 'package:facebook_clone/Components/Cubit/Cubit.dart';
import 'package:facebook_clone/Components/Cubit/States.dart';
import 'package:facebook_clone/WebHomeWidgets/HeadBar.dart';
import 'package:facebook_clone/WebHomeWidgets/LeftSide.dart';
import 'package:facebook_clone/WebHomeWidgets/Posts.dart';
import 'package:facebook_clone/WebHomeWidgets/RightSide.dart';
import 'package:facebook_clone/WebHomeWidgets/Rooms.dart';
import 'package:facebook_clone/WebHomeWidgets/StatusBar.dart';
import 'package:facebook_clone/WebHomeWidgets/Stories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WebHome extends StatelessWidget {
  WebHome({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) => AppCubit()..LoadingPosts(),
      child: BlocBuilder<AppCubit, AppStates>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
                key: _scaffoldkey,
                backgroundColor: Colors.grey[200],
                body: Container(
                  width: width,
                  height: height,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: HeadBar(),
                        ),
                        Row(
                          children: [
                            // Left Side
                            LeftSide(),
                            // Center
                            Container(
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
                            ),
                            // Right Side
                            RightSide(),
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
          );
        },
      ),
    );
  }
}