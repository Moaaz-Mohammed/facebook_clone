import 'package:facebook_clone/Components/Constants.dart';
import 'package:flutter/material.dart';

class RoomHolderModel extends StatelessWidget {
  const RoomHolderModel({Key? key, required this.img}) : super(key: key);
  final String img;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin:EdgeInsets.only(left:5,right:5),
      child: Stack(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(img),
            radius: 25,
          ),
          Positioned(
              top: 38,
              right: 2,
              child: CircleAvatar(
                radius: 8,
                backgroundColor: Colors.white,
              )),
          Positioned(
              top: 39,
              right: 4,
              child: CircleAvatar(
                radius: 6,
                backgroundColor: Colors.green,
              )),
        ],
      ),
    );
  }
}
