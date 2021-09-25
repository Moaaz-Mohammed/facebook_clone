import 'package:facebook_clone/Components/Cubit/Cubit.dart';
import 'package:facebook_clone/Components/Cubit/States.dart';
import 'package:facebook_clone/MobileHomeWidgets/ActionsBar.dart';
import 'package:facebook_clone/MobileHomeWidgets/Posts.dart';
import 'package:facebook_clone/MobileHomeWidgets/StatusBar.dart';
import 'package:facebook_clone/MobileHomeWidgets/Stories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Components/Constants.dart';
import '../Models/CreateStoryModel.dart';
import '../Models/PhonePostModel.dart';
import '../Models/StoryModel.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({Key? key}) : super(key: key);

  @override
  BlocProvider<AppCubit> build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return BlocProvider(
        create: (context) => AppCubit()..LoadingPosts(),
        child: BlocBuilder<AppCubit, AppStates>(builder: (context, state) {
          return SafeArea(
            child: DefaultTabController(
              length: 6,
              child: Scaffold(
                backgroundColor: Colors.grey[200],
                appBar: AppBar(
                  elevation: 0,
                  automaticallyImplyLeading: true,
                  backgroundColor: Colors.white,
                  title: Image.asset(
                    Constants.facebooklinelogo,
                    width: 150,
                  ),
                  actions: [
                    InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                          backgroundColor: Colors.grey[300],
                          radius: 18,
                          child: const Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 25,
                          )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                          backgroundColor: Colors.grey[300],
                          radius: 18,
                          child: Image.asset(
                            Constants.messengerlogo,
                            color: Colors.black,
                            width: 25,
                          )),
                    ),
                    SizedBox(width: 5),
                  ],
                  bottom: TabBar(tabs: [
                    Icon(Icons.home, color: Colors.blue, size: 35),
                    Icon(Icons.groups, color: Colors.grey[600], size: 35),
                    // Image.asset(Constants.groupIcon),
                    Image.asset(Constants.watchIcon, color: Colors.grey[600]),
                    Image.asset(Constants.pagesIcon, color: Colors.grey[600]),
                    Icon(Icons.notifications_none,
                        color: Colors.grey[600], size: 30),
                    Icon(Icons.menu, color: Colors.grey[600], size: 35),
                  ]),
                ),
                body: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          // Status bar
                          StatusBar(),
                          //Live - Photos - Room  | Row
                          ActionsBar(),
                          //Stories
                          Stories(),
                          //Posts
                          AppCubit.get(context).isLoaded
                              ? Column(children: [
                                  SizedBox(height: height * 0.2),
                                  CircularProgressIndicator()
                                ])
                              : Posts(),
                        ],
                      ),
                    ),
                    Center(child: Text('')),
                    Center(child: Text('')),
                    Center(child: Text('')),
                    Center(child: Text('')),
                    Center(child: Text('')),
                  ],
                ),
              ),
            ),
          );
        }));
  }
}