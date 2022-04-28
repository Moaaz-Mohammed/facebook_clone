import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/bloc/cubit.dart';
import '../shared/bloc/states.dart';
import '../web_home_widgets/center_area.dart';
import '../web_home_widgets/head_bar.dart';
import '../web_home_widgets/left_side.dart';
import '../web_home_widgets/right_side.dart';

class WebHome extends StatelessWidget {
  WebHome({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) => AppCubit()..loadingPosts(),
      child: BlocBuilder<AppCubit, AppStates>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              key: _scaffoldkey,
              backgroundColor: Colors.grey[200],
              body: SizedBox(
                width: width,
                height: height,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.topCenter,
                        child: HeadBar(),
                      ),
                      Row(
                        children: const [
                          // Left Side
                          LeftSide(),
                          // Center
                          CenterArea(),
                          // Right Side
                          RightSide(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
