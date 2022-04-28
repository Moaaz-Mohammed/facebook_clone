import 'package:flutter/material.dart';

class SponserModel extends StatelessWidget {
  const SponserModel({
    Key? key,
    required this.CompanyImg,
    required this.CompanyName,
    required this.CompanyWebsite,

  }) : super(key: key);

  final String CompanyImg;
  final String CompanyName;
  final String CompanyWebsite;

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(bottom: 10,top:10),
      width: width,
      child:Row(
        children:
        [
          ClipRRect(
            borderRadius:BorderRadius.circular(10),
              child: Image.asset(CompanyImg,height: width * 0.05,)),
          SizedBox(width: width*0.01,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(CompanyName,style: TextStyle(fontSize:16,color:Colors.grey[800]),),
              SizedBox(height:5),
              Text(CompanyWebsite,style: TextStyle(fontSize:13,color:Colors.grey[600]),),
            ],
          )
        ]
      )
    );
  }
}
