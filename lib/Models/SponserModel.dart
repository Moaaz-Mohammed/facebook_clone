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
      child:Row(
        children:
        [
          Image.asset(CompanyImg,height: 80,),
          SizedBox(width: 5,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(CompanyName,style: TextStyle(fontSize:16,color:Colors.grey[800]),),
              Text(CompanyWebsite,style: TextStyle(fontSize:13,color:Colors.grey[600]),),
            ],
          )
        ]
      )
    );
  }
}
