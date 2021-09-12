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
    return Container(
      margin: EdgeInsets.only(bottom: 10,top:10),
      child:Row(
        children:
        [
          ClipRRect(
            borderRadius:BorderRadius.circular(10),
              child: Image.asset(CompanyImg,height: 100,)),
          SizedBox(width: 10,),
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
