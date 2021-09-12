import 'package:facebook_clone/Components/Constants.dart';
import 'package:facebook_clone/Models/ContactModel.dart';
import 'package:facebook_clone/Models/SponserModel.dart';
import 'package:flutter/material.dart';


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
          Text(
            'Sponsored',
            style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
                fontWeight: FontWeight.w800),
          ),
          SizedBox(height: 10),
          SponserModel(
            CompanyWebsite: 'jumia.com.eg',
            CompanyName: 'Jumia',
            CompanyImg: Constants.JumiaProd,
          ),
          SponserModel(
            CompanyWebsite: 'b-tech.com.eg',
            CompanyName: 'B.Tech',
            CompanyImg: Constants.btechProd,
          ),
          Divider(),
          ListTile(
            leading: Text(
              'Your Pages',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w800),
            ),
            trailing: Icon(Icons.more_horiz_outlined),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage(Constants.girlImg),
            ),
            title: Text(
              'Page name - اسم الصفحة',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            margin:EdgeInsets.only(top:5,bottom:5),
            padding: EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Icon(Icons.notifications_outlined,
                    color: Colors.grey, size: 25),
                SizedBox(width: 5),
                Text(
                  '1 Notification',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                )
              ],
            ),
          ),
          Container(
            margin:EdgeInsets.only(top:5,bottom:5),
            padding: EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Icon(Icons.campaign,
                    color: Colors.grey, size: 25),
                SizedBox(width: 5),
                Text(
                  'Create Promotion',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                )
              ],
            ),
          ),
          Divider(),
          ListTile(
            leading: Text(
              'Contacts',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w800),
            ),
            title: Container(
              margin: EdgeInsets.only(left:50),
              child: Row(
                children: [
                  Icon(Icons.video_call,size:22,color:Colors.grey[700]),
                  SizedBox(width:15),
                  Icon(Icons.search,size:22,color:Colors.grey[700]),
                  SizedBox(width:15),
                  Icon(Icons.more_horiz_outlined,size:22,color:Colors.grey[700]),
                ],
              ),
            ),
          ),
          ContactModel(name:'Dwayn Johnson',img: Constants.person2,)
        ],
      ),
    );
  }
}
