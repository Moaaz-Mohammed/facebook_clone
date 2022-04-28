import 'package:facebook_clone/shared/constants.dart';
import 'package:flutter/material.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      width: width * 0.5,
      padding: const EdgeInsets.only(top: 20, bottom: 10, right: 10, left: 10),
      decoration: BoxDecoration(
        color: Constants.homeBackgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          // Status
          Row(
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(Constants.girlImg),
              ),
              const SizedBox(width: 10),
              InkWell(
                onTap: () {},
                child: Container(
                  width: width * 0.4,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Constants.homeBackgroundColor,
                      border: Border.all(
                        color: Colors.grey,
                      )),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          padding: const EdgeInsets.only(left: 20),
                          child: const Text(
                            'What\'s on your mind?',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ))),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(
            color: Colors.grey,
          ),
          const SizedBox(height: 10),
          // List of Activities
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Image.asset(Constants.liveIcon, height: 20),
                      const SizedBox(width: 5),
                      const Text(
                        'Live video',
                        style: TextStyle(
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
                    children: [
                      Image.asset(
                        Constants.photosImg,
                        width: 30,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'Photo / Video',
                        style: TextStyle(
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
                        Icons.emoji_emotions_outlined,
                        color: Colors.yellow,
                        size: 30,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Feeling / Activity',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
