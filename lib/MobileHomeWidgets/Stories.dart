import 'package:facebook_clone/Components/Constants.dart';
import 'package:facebook_clone/Models/CreateStoryModel.dart';
import 'package:facebook_clone/Models/StoryModel.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
