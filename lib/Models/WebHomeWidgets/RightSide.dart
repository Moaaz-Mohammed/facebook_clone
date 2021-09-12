import 'package:facebook_clone/Components/Constants.dart';
import 'package:flutter/material.dart';

import '../SponserModel.dart';

class RightSide extends StatelessWidget {
  const RightSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.only(left: 5, top: 10),
      width: width * 0.2,
      height: height,
      child: ListView(
        children: [
          SponserModel(CompanyWebsite: 'facebook.com', CompanyName: 'Facebook', CompanyImg: Constants.facebooklogo,),
          Divider(),
          ListTile(leading: Text('Your shortcuts',style: TextStyle(fontSize:16,color:Colors.grey[600],fontWeight:FontWeight.w800),)),
          ListTile(
              leading: CircleAvatar(
                radius:15,
                backgroundImage: AssetImage(Constants.girlImg),
              ),
              title: Text('Moaaz Mohammed',
                  style: TextStyle(fontSize:15,fontWeight: FontWeight.w600))),
          ListTile(
              leading: CircleAvatar(
                radius:15,
                backgroundImage: AssetImage(Constants.girlImg),
              ),
              title: Text('Moaaz Mohammed',
                  style: TextStyle(fontSize:15,fontWeight: FontWeight.w600))),
          ListTile(
              leading: CircleAvatar(
                radius:15,
                backgroundImage: AssetImage(Constants.girlImg),
              ),
              title: Text('Moaaz Mohammed',
                  style: TextStyle(fontSize:15,fontWeight: FontWeight.w600))),
          ListTile(
              leading: CircleAvatar(
                radius:15,
                backgroundImage: AssetImage(Constants.girlImg),
              ),
              title: Text('Moaaz Mohammed',
                  style: TextStyle(fontSize:15,fontWeight: FontWeight.w600))),
          ListTile(
              leading: CircleAvatar(
                radius:15,
                backgroundImage: AssetImage(Constants.girlImg),
              ),
              title: Text('Moaaz Mohammed',
                  style: TextStyle(fontSize:15,fontWeight: FontWeight.w600))),
          ListTile(
              leading: CircleAvatar(
                radius:15,
                backgroundImage: AssetImage(Constants.girlImg),
              ),
              title: Text('Moaaz Mohammed',
                  style: TextStyle(fontSize:15,fontWeight: FontWeight.w600))),
        ],
      ),
    );
  }
}
