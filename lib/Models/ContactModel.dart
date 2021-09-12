import 'package:facebook_clone/Components/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactModel extends StatelessWidget {
  const ContactModel({Key? key, required this.img,required this.name}) : super(key: key);
  final String img;
  final String name;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin:EdgeInsets.only(left:5,right:5),
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(img),
                radius: 15,
              ),
              Positioned(
                  top: 18,
                  right: 1,
                  child: CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.white,
                  )),
              Positioned(
                  top: 17,
                  right: 2,
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.green,
                  )),
            ],
          ),
          SizedBox(width:15),
          Text(name,style: TextStyle(fontSize:14,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
