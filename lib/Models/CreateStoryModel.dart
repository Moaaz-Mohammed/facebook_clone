import 'package:flutter/material.dart';

class CreateStoryModel extends StatelessWidget {
  const CreateStoryModel({
    Key? key,
    required this.backgroundImg,
  }) : super(key: key);
  final backgroundImg;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
                  opacity: 0.8,
                  child: Image.asset(
                    backgroundImg,
                    fit: BoxFit.cover,
                  )),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: Colors.white,
                  height: 60,
                  width: width,
                  child: Center(child: Text('Create Story')),
                ),
              ),
              Positioned(
                bottom: 45,
                left: 38,
                child: CircleAvatar(
                  radius: 23,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
