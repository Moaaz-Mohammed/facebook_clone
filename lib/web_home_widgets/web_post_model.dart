import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter/material.dart';

import '../shared/constants.dart';

class WebPostModel extends StatelessWidget {
  const WebPostModel({
    Key? key,
    required this.name,
    required this.profileImg,
    required this.time,
    required this.text,
    required this.icon,
    required this.imgs,
    required this.commentsNum,
  }) : super(key: key);

  final String name;
  final String profileImg;
  final String time;
  final String text;
  final String commentsNum;
  final IconData icon;
  final List<Widget> imgs;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        width: width * 0.5,
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Constants.homeBackgroundColor),
        child: Column(
          children: [
            // Name - Shared Time
            Row(children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(profileImg),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        '$time ago',
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        '·',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      const SizedBox(width: 5),
                      Icon(icon, color: Colors.grey, size: 20)
                    ],
                  ),
                ],
              ),
            ]),
            const SizedBox(height: 10),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 15),
                  textAlign: TextAlign.left,
                )),
            const SizedBox(
              height: 10,
            ),
            // عشان لما يكون فيه صورة واحده بس تكون عبارة عن صورة مش Carousel و لما يكون مفيش خالص يكتب الـ Text بس و يكون فيه امكانيه انه يضيف اكتر من صورة في البوست الواحد على شكل Carousel
            imgs.length == 1
                ? Column(
                    children: imgs,
                  )
                : imgs.length > 1
                    ? SizedBox(
                        height: 300,
                        child: Carousel(
                          autoplayDuration: const Duration(seconds: 5),
                          animationDuration: const Duration(seconds: 5),
                          images: imgs,
                          dotSpacing: 20.0,
                          dotSize: 5,
                          dotColor: Colors.white,
                          dotIncreasedColor: Colors.grey,
                          indicatorBgPadding: 10.0,
                          dotBgColor: Colors.grey[100],
                          borderRadius: true,
                        ),
                      )
                    : const Text(''),
            const SizedBox(height: 10),

            // Reacts and Number of Comments
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      Constants.laughtReact,
                      width: 25,
                    ),
                    Image.asset(
                      Constants.likeReact,
                      width: 35,
                    ),
                    Image.asset(
                      Constants.loveReact,
                      width: 25,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '$commentsNum comments',
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 5),
            const Divider(),
            const SizedBox(height: 5),
            // React on the post
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Image.asset(
                        Constants.likeIcon,
                        width: 20,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'Like',
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Image.asset(
                        Constants.commentIcon,
                        width: 25,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'Comment',
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Image.asset(
                        Constants.shareIcon,
                        width: 25,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'Share',
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
