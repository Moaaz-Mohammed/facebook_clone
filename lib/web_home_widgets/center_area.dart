import 'package:facebook_clone/mobile_home_widgets/status_bar.dart';
import 'package:facebook_clone/shared/bloc/cubit.dart';
import 'package:facebook_clone/web_home_widgets/rooms.dart';
import 'package:flutter/material.dart';

import '../mobile_home_widgets/posts.dart';
import '../mobile_home_widgets/stories.dart';

class CenterArea extends StatelessWidget {
  const CenterArea({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width * 0.6,
      height: height,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Stories
            const Stories(),
            // Status bar
            const StatusBar(),
            // Rooms
            const Rooms(),
            //Posts
            AppCubit.get(context).isLoaded
                ? Center(
                    child: SizedBox(
                        width: width * 0.6,
                        child: const LinearProgressIndicator()))
                : const Posts(),
          ],
        ),
      ),
    );
  }
}
