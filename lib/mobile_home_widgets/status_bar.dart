import 'package:facebook_clone/shared/constants.dart';
import 'package:flutter/material.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 10, right: 10, left: 10),
      color: Constants.homeBackgroundColor,
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
                      color: Constants.homeBackgroundColor,
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
                                fontSize: 18, fontWeight: FontWeight.w400),
                          )))))
        ],
      ),
    );
  }
}
