import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../Components/Constants.dart';
import '../Models/CreateStoryModel.dart';
import '../Models/PhonePostModel.dart';
import '../Models/StoryModel.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold (
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
                      size: 30,
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
                      width: 30,
                    )),
              ),
              SizedBox(width: 5),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                // Status bar
                Container(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 10, right: 10, left: 10),
                  color: Constants.home_bg_color,
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.transparent,
                        backgroundImage: const AssetImage(Constants.girlImg),
                      ),
                      const SizedBox(width: 10),
                      InkWell(
                          onTap: () {},
                          child: Container(
                              width: width * 0.79,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Constants.home_bg_color,
                                  border: Border.all(
                                    color: Colors.grey,
                                  )),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Text(
                                        'What\'s on your mind?',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                      )))))
                    ],
                  ),
                ),
                //Live - Photos - Room  | Row
                Container(
                  height: 70,
                  color: Constants.home_bg_color,
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 10, right: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              const Icon(
                                Icons.video_call,
                                color: Colors.red,
                                size: 30,
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                'Live',
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          )),
                      const Text(
                        '|',
                        style: const TextStyle(color: Colors.grey),
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
                                'Photos',
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          )),
                      const Text(
                        '|',
                        style: TextStyle(color: Colors.grey),
                      ),
                      InkWell(
                          onTap: () {},
                          child: Row(
                            children: const [
                              Icon(
                                Icons.video_call,
                                color: Colors.deepPurple,
                                size: 30,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Room',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                //Stories
                Container(
                  color: Constants.home_bg_color,
                  height: 250,
                  margin: EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.all(5),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CreateStoryModel(backgroundImg: Constants.girlImg),
                      StoryCardModel(
                        backgroundImg: Constants.girlImg,
                        profileImg: Constants.girlImg,
                        name: 'Cathrine Make',
                      ),
                      StoryCardModel(
                        backgroundImg: Constants.person2,
                        profileImg: Constants.person2,
                        name: 'Dwayne Johnson',
                      ),
                      StoryCardModel(
                        backgroundImg: Constants.person3,
                        profileImg: Constants.person3,
                        name: 'Mike Jordan',
                      ),
                      StoryCardModel(
                        backgroundImg: Constants.person4,
                        profileImg: Constants.person4,
                        name: 'Bill Gates',
                      ),
                      StoryCardModel(
                        backgroundImg: Constants.car7,
                        profileImg: Constants.person5,
                        name: 'Mohamed Salah',
                      ),
                      StoryCardModel(
                        backgroundImg: Constants.person2,
                        profileImg: Constants.person2,
                        name: 'Dwayne Johnson',
                      ),
                      StoryCardModel(
                        backgroundImg: Constants.person3,
                        profileImg: Constants.person3,
                        name: 'Mike Jordan',
                      ),
                      StoryCardModel(
                        backgroundImg: Constants.person4,
                        profileImg: Constants.person4,
                        name: 'Bill Gates',
                      ),
                      StoryCardModel(
                        backgroundImg: Constants.car7,
                        profileImg: Constants.person5,
                        name: 'Mohamed Salah',
                      ),
                      StoryCardModel(
                        backgroundImg: Constants.person2,
                        profileImg: Constants.person2,
                        name: 'Dwayne Johnson',
                      ),
                      StoryCardModel(
                        backgroundImg: Constants.person3,
                        profileImg: Constants.person3,
                        name: 'Mike Jordan',
                      ),
                      StoryCardModel(
                        backgroundImg: Constants.person4,
                        profileImg: Constants.person4,
                        name: 'Bill Gates',
                      ),
                      StoryCardModel(
                        backgroundImg: Constants.car7,
                        profileImg: Constants.person5,
                        name: 'Mohamed Salah',
                      ),
                    ],
                  ),
                ),
                //Posts
                PostModel(
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
                PostModel(
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
                PostModel(
                  name: 'Bill Gates',
                  profileImg: Constants.person4,
                  time: '5 min',
                  text: 'Beauty of nature!',
                  icon: Icons.public,
                  imgs: [Image.asset(Constants.car6)],
                ),
                PostModel(
                  name: 'Mike Jordan',
                  profileImg: Constants.person3,
                  time: '2 hours',
                  text: 'It\'s a big dream! but you can do it 😉❤',
                  icon: Icons.public,
                  imgs: [],
                ),
                PostModel(
                    name: 'Elizabeth Olsen',
                    profileImg: Constants.person1,
                    time: '2 Days',
                    text: 'It\'s a great day to work!',
                    icon: Icons.public,
                    imgs: [])
              ],
            ),
          )),
    );
  }
}
