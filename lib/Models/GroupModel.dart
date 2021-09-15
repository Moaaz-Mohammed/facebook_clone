import 'package:facebook_clone/Components/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroupModel extends StatelessWidget {
  const GroupModel(
      {Key? key, required this.img1, required this.img2, required this.groupName})
      : super(key: key);
  final String img1;
  final String img2;
  final String groupName;
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin:EdgeInsets.only(left:20),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: width*0.1,
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Positioned(
                      top: 0,
                      left:-20,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(img1),
                        radius: 15,
                      ),
                    ),
                    Positioned(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(img2),
                        radius: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 20,
                  right: 105,
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.white,
                  )),
              Positioned(
                  top: 21,
                  right: 104,
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.green,
                  )),
            ],
          ),
          Text(
            groupName,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
