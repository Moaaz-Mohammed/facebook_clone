import 'package:facebook_clone/models/phone_post_model.dart';
import 'package:facebook_clone/shared/constants.dart';
import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          ],
          commentsNum: '5',
        ),
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
          ],
          commentsNum: '15',
        ),
        PostModel(
          name: 'Bill Gates',
          profileImg: Constants.person4,
          time: '5 min',
          text: 'Your life is a movie.So act like superman!',
          icon: Icons.public,
          imgs: [Image.asset(Constants.car6)],
          commentsNum: '',
        ),
        PostModel(
          name: 'Mike Jordan',
          profileImg: Constants.person3,
          time: '2 hours',
          text: 'It\'s a big dream! but you can do it 😉❤',
          icon: Icons.public,
          imgs: [],
          commentsNum: '60',
        ),
        PostModel(
          name: 'Elizabeth Olsen',
          profileImg: Constants.person1,
          time: '2 Days',
          text: 'It\'s a great day to work!',
          icon: Icons.public,
          imgs: [],
          commentsNum: '5814',
        ),
      ],
    );
  }
}
