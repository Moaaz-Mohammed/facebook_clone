import 'package:facebook_clone/Components/Cubit/Cubit.dart';
import 'package:facebook_clone/Components/Cubit/States.dart';
import 'package:facebook_clone/Models/RoomHolderModel.dart';
import 'package:facebook_clone/WebHomeWidgets/LeftSide.dart';
import 'package:facebook_clone/WebHomeWidgets/RightSide.dart';
import 'package:facebook_clone/WebHomeWidgets/WebPostModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Components/Constants.dart';
import '../Models/CreateStoryModel.dart';
import '../Models/StoryModel.dart';

class WebHome extends StatelessWidget {
  WebHome({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) => AppCubit()..LoadingPosts(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
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
                          child: Container(
                            color: Constants.home_bg_color,
                            height: 55,
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(left: 15),
                                        child: Image.asset(
                                            Constants.facebooklogo,
                                            height: 40)),
                                    Container(
                                        margin: EdgeInsets.only(left: 10),
                                        height: 40,
                                        width: width * 0.17,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.grey[200],
                                        ),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            prefixIcon: Icon(
                                              Icons.search,
                                              color: Colors.grey[700],
                                            ),
                                            hintText: 'Search Facebook',
                                            border: InputBorder.none,
                                          ),
                                        )),
                                  ],
                                ),
                                Center(
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          right: width * 0.05,
                                          left: width * 0.05),
                                      width: width * 0.5,
                                      child: DefaultTabController(
                                        initialIndex: 0,
                                        length: 5,
                                        child: Scaffold(
                                          appBar: AppBar(
                                            backgroundColor: Colors.white,
                                            elevation: 0,
                                            toolbarHeight: 80,
                                            bottom: TabBar(
                                                indicatorWeight: 3,
                                                unselectedLabelColor:
                                                    Colors.grey,
                                                tabs: [
                                                  Icon(
                                                    Icons.home,
                                                    color: Colors.blue,
                                                    size: 30,
                                                  ),
                                                  Icon(Icons.flag_outlined),
                                                  Icon(Icons.video_collection),
                                                  Icon(Icons.shopping_bag),
                                                  Icon(Icons.group_outlined)
                                                ]),
                                          ),
                                        ),
                                      )),
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: width * 0.012,
                                      backgroundImage: AssetImage(
                                        Constants.girlImg,
                                      ),
                                    ),
                                    SizedBox(width: width * 0.002),
                                    Text(
                                      'Moaaz',
                                      style: TextStyle(
                                          fontSize: width * 0.012,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: width * 0.002),
                                    CircleAvatar(
                                        backgroundColor: Colors.grey[300],
                                        radius: width * 0.012,
                                        child: const Icon(
                                          Icons.apps_rounded,
                                          color: Colors.black,
                                          size: 25,
                                        )),
                                    SizedBox(width: width * 0.001),
                                    CircleAvatar(
                                        backgroundColor: Colors.grey[300],
                                        radius: width * 0.012,
                                        child: Image.asset(
                                          Constants.messengerlogo,
                                          color: Colors.black,
                                          width: width * 0.015,
                                        )),
                                    SizedBox(width: width * 0.001),
                                    CircleAvatar(
                                        backgroundColor: Colors.grey[300],
                                        radius: width * 0.012,
                                        child: const Icon(
                                          Icons.notifications,
                                          color: Colors.black,
                                          size: 20,
                                        )),
                                    SizedBox(width: width * 0.001),
                                    CircleAvatar(
                                        backgroundColor: Colors.grey[300],
                                        radius: width * 0.012,
                                        child: const Icon(
                                          Icons.arrow_drop_down_sharp,
                                          color: Colors.black,
                                          size: 30,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
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
                                    Container(
                                      height: 200,
                                      width: width * 0.55,
                                      margin: EdgeInsets.only(top: 10),
                                      padding: const EdgeInsets.all(5),
                                      child: Stack(
                                        children: [
                                          ListView(
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              CreateStoryModel(
                                                  backgroundImg:
                                                      Constants.girlImg),
                                              StoryCardModel(
                                                backgroundImg:
                                                    Constants.person2,
                                                profileImg: Constants.person2,
                                                name: 'Dwayne Johnson',
                                              ),
                                              StoryCardModel(
                                                backgroundImg:
                                                    Constants.person3,
                                                profileImg: Constants.person3,
                                                name: 'Mike Jordan',
                                              ),
                                              StoryCardModel(
                                                backgroundImg:
                                                    Constants.person4,
                                                profileImg: Constants.person4,
                                                name: 'Bill Gates',
                                              ),
                                              StoryCardModel(
                                                backgroundImg: Constants.car7,
                                                profileImg: Constants.person5,
                                                name: 'Mohamed Salah',
                                              ),
                                              StoryCardModel(
                                                backgroundImg:
                                                    Constants.person2,
                                                profileImg: Constants.person2,
                                                name: 'Dwayne Johnson',
                                              ),
                                              StoryCardModel(
                                                backgroundImg: Constants.car7,
                                                profileImg: Constants.person5,
                                                name: 'Mohamed Salah',
                                              ),
                                            ],
                                          ),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: CircleAvatar(
                                                radius: 20,
                                                backgroundColor: Colors.white,
                                                child: Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: Colors.black),
                                              ))
                                        ],
                                      ),
                                    ),
                                    // Status bar
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                      width: width * 0.5,
                                      padding: const EdgeInsets.only(
                                          top: 20,
                                          bottom: 10,
                                          right: 10,
                                          left: 10),
                                      decoration: BoxDecoration(
                                        color: Constants.home_bg_color,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        children: [
                                          // Status
                                          Row(
                                            children: [
                                              const CircleAvatar(
                                                radius: 25,
                                                backgroundColor:
                                                    Colors.transparent,
                                                backgroundImage:
                                                    const AssetImage(
                                                        Constants.girlImg),
                                              ),
                                              const SizedBox(width: 10),
                                              InkWell(
                                                onTap: () {},
                                                child: Container(
                                                  width: width * 0.4,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40),
                                                      color: Constants
                                                          .home_bg_color,
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      )),
                                                  child: Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 20),
                                                          child: Text(
                                                            'What\'s on your mind?',
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          ))),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 10),
                                          Divider(
                                            color: Colors.grey,
                                          ),
                                          SizedBox(height: 10),
                                          // List of Activities
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              InkWell(
                                                  onTap: () {},
                                                  child: Row(
                                                    children: [
                                                      Image.asset(
                                                          Constants.liveIcon,
                                                          height: 20),
                                                      const SizedBox(width: 5),
                                                      const Text(
                                                        'Live video',
                                                        style: const TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )
                                                    ],
                                                  )),
                                              const Text(
                                                '|',
                                                style: const TextStyle(
                                                    color: Colors.grey),
                                              ),
                                              InkWell(
                                                  onTap: () {},
                                                  child: Row(
                                                    children: [
                                                      Image.asset(
                                                        Constants.photosImg,
                                                        width: 30,
                                                      ),
                                                      const SizedBox(width: 5),
                                                      const Text(
                                                        'Photo / Video',
                                                        style: const TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )
                                                    ],
                                                  )),
                                              const Text(
                                                '|',
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                              InkWell(
                                                  onTap: () {},
                                                  child: Row(
                                                    children: const [
                                                      Icon(
                                                        Icons
                                                            .emoji_emotions_outlined,
                                                        color: Colors.yellow,
                                                        size: 30,
                                                      ),
                                                      SizedBox(width: 5),
                                                      Text(
                                                        'Feeling / Activity',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )
                                                    ],
                                                  )),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                      width: width * 0.5,
                                      padding: const EdgeInsets.only(
                                          top: 20,
                                          bottom: 10,
                                          right: 10,
                                          left: 10),
                                      decoration: BoxDecoration(
                                        color: Constants.home_bg_color,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Stack(children: [
                                        Container(
                                          width: width * 0.5,
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {},
                                                  child: Container(
                                                    padding: EdgeInsets.only(
                                                        left: width * 0.005,
                                                        right: width * 0.005,
                                                        top: width * 0.001,
                                                        bottom: width * 0.001),
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.blue,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.video_call,
                                                          color: Colors.purple,
                                                        ),
                                                        SizedBox(width: 5),
                                                        Text(
                                                          'Create Room',
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Colors
                                                                  .purple),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: width * 0.005),
                                                RoomHolderModel(
                                                  img: Constants.person1,
                                                ),
                                                RoomHolderModel(
                                                  img: Constants.person2,
                                                ),
                                                RoomHolderModel(
                                                  img: Constants.person3,
                                                ),
                                                RoomHolderModel(
                                                  img: Constants.person5,
                                                ),
                                                RoomHolderModel(
                                                  img: Constants.person5,
                                                ),
                                                RoomHolderModel(
                                                  img: Constants.girlImg,
                                                ),
                                                RoomHolderModel(
                                                  img: Constants.person5,
                                                ),
                                                RoomHolderModel(
                                                  img: Constants.person2,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: CircleAvatar(
                                              radius: 20,
                                              backgroundColor: Colors.white,
                                              child: Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: Colors.black),
                                            ))
                                      ]),
                                    ),
                                    //Posts
                                    AppCubit.get(context).isLoaded
                                        ? Center(child: Container(
                                        width:width * 0.6,
                                        child: LinearProgressIndicator()))
                                        : Column(
                                      children: [
                                        WebPostModel(
                                            name: 'Dwayne Johnson',
                                            profileImg: Constants.person2,
                                            time: '2 days',
                                            text:
                                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis et arcu at sapien auctor vehicula ut non massa. Fusce blandit tortor non nisl mollis imperdiet. Vestibulum vel turpis in orci maximus condimentum. Ut nec viverra magna, sit amet iaculis erat. Aenean tellus eros, pulvinar ac nisi et, tincidunt luctus diam. Aliquam tristique risus at dui ultricies, eu sodales felis aliquet. Donec dolor risus, semper vitae erat id, dictum malesuada neque.',
                                            icon: Icons.group,
                                            imgs: [
                                              Image.asset(Constants.fast),
                                              Image.asset(Constants.fast2),
                                              Image.asset(Constants.fast3),
                                            ]),
                                        WebPostModel(
                                            name: 'Mohamed Salah',
                                            profileImg: Constants.person5,
                                            time: '2 min',
                                            text:
                                                'Going to Real Madrid? It\'s a dream to any player. In this time I just focus with my team 😊',
                                            icon: Icons.public,
                                            imgs: [
                                              Image.asset(
                                                Constants.car7,
                                              ),
                                            ]),
                                        WebPostModel(
                                          name: 'Bill Gates',
                                          profileImg: Constants.person4,
                                          time: '5 min',
                                          text:
                                              'Your life is a movie.So act like superman!',
                                          icon: Icons.public,
                                          imgs: [Image.asset(Constants.car6)],
                                        ),
                                        WebPostModel(
                                          name: 'Mike Jordan',
                                          profileImg: Constants.person3,
                                          time: '2 hours',
                                          text:
                                              'It\'s a big dream! but you can do it 😉❤',
                                          icon: Icons.public,
                                          imgs: [],
                                        ),
                                        WebPostModel(
                                            name: 'Elizabeth Olsen',
                                            profileImg: Constants.person1,
                                            time: '2 Days',
                                            text: 'It\'s a great day to work!',
                                            icon: Icons.public,
                                            imgs: []),
                                      ],
                                    )
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
