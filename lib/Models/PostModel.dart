import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../Components/Constants.dart';

class PostModel extends StatelessWidget {
  PostModel({
    Key? key,
    required this.name,
    required this.profileImg,
    required this.time,
    required this.text,
    required this.icon,
    required this.imgs,
  }) : super(key: key);

  final String name;
  final String profileImg;
  final String time;
  final String text;
  final IconData icon;
  final List<Widget> imgs;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
        width: width*0.5,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Constants.home_bg_color),
        child: Column(
          children: [
            // Name - Shared Time
            Row(children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(profileImg),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        '$time ago',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      SizedBox(width: 5),
                      Text(
                        '·',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      SizedBox(width: 5),
                      Icon(icon, color: Colors.grey, size: 20)
                    ],
                  ),
                ],
              ),
            ]),
            SizedBox(height: 10),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  text,
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.left,
                )),
            SizedBox(
              height: 10,
            ),
            imgs.length == 1
                ? Column(
                    children: imgs,
                  )
                : imgs.length > 1
                    ? CarouselSlider(
                        items: imgs,
                        options: CarouselOptions(
                          height: imgs.length == 0 ? height : 300,
                          viewportFraction: 0.85,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          scrollDirection: Axis.horizontal,
                        ),
                      )
                    : Text(''),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: Expanded(
                    child: Row(
                      children: [
                        Image.asset(Constants.likeIcon,width : 20,),
                        SizedBox(width:5),
                        Text('Like',style: TextStyle(fontSize : 14),)
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Expanded(
                    child: Row(
                      children: [
                        Image.asset(Constants.commentIcon,width: 25,),
                        SizedBox(width:5),
                        Text('Comment',style: TextStyle(fontSize:14),)
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Expanded(
                    child: Row(
                      children: [
                        Image.asset(Constants.shareIcon,width: 25,),
                        SizedBox(width:5),
                        Text('Share',style: TextStyle(fontSize:14),)
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
