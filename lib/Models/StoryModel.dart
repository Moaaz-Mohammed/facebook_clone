import 'package:flutter/material.dart';

class StoryCardModel extends StatelessWidget {
  const StoryCardModel({
    Key? key,
    required this.name,
    required this.profileImg,
    required this.backgroundImg,
  }) : super(key: key);

  final name;
  final profileImg;
  final backgroundImg;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            fit: StackFit.passthrough,
            children: [
              Opacity(
                  opacity: 0.9,
                  child: Image.asset(
                    backgroundImg,
                    fit: BoxFit.cover,
                  )),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CircleAvatar(
                      radius: 20,
                      child: CircleAvatar(
                          backgroundImage: AssetImage(profileImg))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, bottom: 5),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    name,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
