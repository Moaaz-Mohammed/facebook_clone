import 'package:facebook_clone/models/create_story_model.dart';
import 'package:facebook_clone/models/story_model.dart';
import 'package:facebook_clone/shared/constants.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 200,
      width: width * 0.55,
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(5),
      child: Stack(
        children: [
          ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              CreateStoryModel(backgroundImg: Constants.girlImg),
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
                backgroundImg: Constants.car7,
                profileImg: Constants.person5,
                name: 'Mohamed Salah',
              ),
            ],
          ),
          const Align(
              alignment: Alignment.centerRight,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Icon(Icons.arrow_forward_ios, color: Colors.black),
              ))
        ],
      ),
    );
  }
}
