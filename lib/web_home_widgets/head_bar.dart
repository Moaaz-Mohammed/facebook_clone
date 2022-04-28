import 'package:facebook_clone/shared/constants.dart';
import 'package:flutter/material.dart';

class HeadBar extends StatelessWidget {
  const HeadBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Constants.homeBackgroundColor,
      height: 55,
      child: Row(
        children: [
          Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: Image.asset(Constants.facebooklogo, height: 40)),
              Container(
                  margin: const EdgeInsets.only(left: 10),
                  height: 40,
                  width: width * 0.17,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[200],
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey[700],
                      ),
                      hintText: 'Search Facebook',
                      border: InputBorder.none,
                    ),
                  )),
            ],
          ),
          Center(
            child: Container(
                margin:
                    EdgeInsets.only(right: width * 0.05, left: width * 0.05),
                width: width * 0.5,
                child: DefaultTabController(
                  initialIndex: 0,
                  length: 5,
                  child: Scaffold(
                    appBar: AppBar(
                      backgroundColor: Colors.white,
                      elevation: 0,
                      toolbarHeight: 80,
                      bottom: const TabBar(
                        indicatorWeight: 3,
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          Icon(
                            Icons.home,
                            color: Colors.blue,
                            size: 30,
                          ),
                          Icon(Icons.flag_outlined),
                          Icon(Icons.video_collection),
                          Icon(Icons.shopping_bag),
                          Icon(Icons.group_outlined)
                        ],
                      ),
                    ),
                  ),
                )),
          ),
          Row(
            children: [
              CircleAvatar(
                radius: width * 0.012,
                backgroundImage: const AssetImage(
                  Constants.person4,
                ),
              ),
              SizedBox(width: width * 0.002),
              Text(
                'Moaaz',
                style: TextStyle(
                    fontSize: width * 0.012, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: width * 0.002),
              CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  radius: width * 0.012,
                  child: const Icon(
                    Icons.apps_rounded,
                    color: Colors.black,
                    size: 25,
                  )),
              SizedBox(width: width * 0.001),
              CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  radius: width * 0.012,
                  child: Image.asset(
                    Constants.messengerlogo,
                    color: Colors.black,
                    width: width * 0.015,
                  )),
              SizedBox(width: width * 0.001),
              CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  radius: width * 0.012,
                  child: const Icon(
                    Icons.notifications,
                    color: Colors.black,
                    size: 20,
                  )),
              SizedBox(width: width * 0.001),
              CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  radius: width * 0.012,
                  child: const Icon(
                    Icons.arrow_drop_down_sharp,
                    color: Colors.black,
                    size: 30,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
