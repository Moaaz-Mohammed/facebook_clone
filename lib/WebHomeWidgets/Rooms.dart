import 'package:facebook_clone/Components/Constants.dart';
import 'package:facebook_clone/Models/RoomHolderModel.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  const Rooms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin:
      EdgeInsets.only(top: 10, bottom: 10),
      width: width * 0.5,
      padding: const EdgeInsets.only(
          top: 20,
          bottom: 10,
          right: 10,
          left: 10),
      decoration: BoxDecoration(
        color: Constants.home_bg_color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(children: [
        Container(
          width: width * 0.5,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(
                        left: width * 0.005,
                        right: width * 0.005,
                        top: width * 0.001,
                        bottom: width * 0.001),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius:
                      BorderRadius.circular(
                          20),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.video_call,
                          color: Colors.purple,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Create Room',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight:
                              FontWeight
                                  .bold,
                              color: Colors
                                  .purple),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: width * 0.005),
                RoomHolderModel(
                  img: Constants.person1,
                ),
                RoomHolderModel(
                  img: Constants.person2,
                ),
                RoomHolderModel(
                  img: Constants.person3,
                ),
                RoomHolderModel(
                  img: Constants.person5,
                ),
                RoomHolderModel(
                  img: Constants.person5,
                ),
                RoomHolderModel(
                  img: Constants.girlImg,
                ),
                RoomHolderModel(
                  img: Constants.person5,
                ),
                RoomHolderModel(
                  img: Constants.person2,
                ),
              ],
            ),
          ),
        ),
        Align(
            alignment: Alignment.centerRight,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black),
            ))
      ]),
    );
  }
}
