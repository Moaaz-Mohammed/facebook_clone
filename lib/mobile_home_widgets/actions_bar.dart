import 'package:facebook_clone/shared/constants.dart';
import 'package:flutter/material.dart';

class ActionsBar extends StatelessWidget {
  const ActionsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Constants.homeBackgroundColor,
      padding: const EdgeInsets.only(top: 20, bottom: 10, right: 10, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Image.asset(
                    Constants.liveIcon,
                    width: 25,
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
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
