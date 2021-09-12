import 'package:facebook_clone/Components/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroupModel extends StatelessWidget {
  const GroupModel(
      {Key? key, required this.img1, required this.img2, required this.name})
      : super(key: key);
  final String img1;
  final String img2;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Stack(
            children: [
              Stack(
                fit: StackFit.passthrough,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(img1),
                    radius: 15,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(img2),
                    radius: 15,
                  ),
                ],
              ),
              Positioned(
                  top: 18,
                  right: 1,
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.white,
                  )),
              Positioned(
                  top: 19,
                  right: 2,
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.green,
                  )),
            ],
          ),
          SizedBox(width: 15),
          Text(
            name,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
