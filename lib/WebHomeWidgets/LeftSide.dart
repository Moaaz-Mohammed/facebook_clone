import 'package:facebook_clone/Components/Constants.dart';
import 'package:flutter/material.dart';

class LeftSide extends StatelessWidget {
  const LeftSide({Key? key}) : super(key: key);

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
          ListTile(
              leading: CircleAvatar(
                radius:15,
                backgroundImage: AssetImage(Constants.girlImg),
              ),
              title: Text('Moaaz Mohammed',
                  style: TextStyle(fontSize:15,fontWeight: FontWeight.w600))),
          ListTile(
              leading: Icon(Icons.group,size:30,color:Colors.lightBlue),
              title: Text('Friends',
                  style: TextStyle(fontSize:15,fontWeight: FontWeight.w600))),
          ListTile(
              leading: Image.asset(Constants.groupIcon,height: 35,),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Groups', style: TextStyle(fontSize:15,fontWeight: FontWeight.w600)),
                  Row(
                    children: [
                      Text('•',style: TextStyle(fontSize:32,color:Colors.blue),),
                      Text('6 new',style: TextStyle(fontSize:13,color:Colors.blue),),
                    ],
                  ),
                ],
              )),
          ListTile(
              leading: Image.asset(Constants.watchIcon,height: 35,),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Watch', style: TextStyle(fontSize:15,fontWeight: FontWeight.w600)),
                  Row(
                    children: [
                      Text('•',style: TextStyle(fontSize:32,color:Colors.blue),),
                      Text('9+ new videos',style: TextStyle(fontSize:13,color:Colors.blue),),
                    ],
                  ),
                ],
              )),
          ListTile(
              leading: Image.asset(Constants.pagesIcon,height: 35,),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Pages', style: TextStyle(fontSize:15,fontWeight: FontWeight.w600)),
                  Row(
                    children: [
                      Text('•',style: TextStyle(fontSize:32,color:Colors.blue),),
                      Text('1 new videos',style: TextStyle(fontSize:13,color:Colors.blue),),
                    ],
                  ),
                ],
              )),
          ListTile(
              leading: Icon(Icons.bookmark,color:Colors.purple),
              title: Text('Saved', style: TextStyle(fontSize:15,fontWeight: FontWeight.w600))),
          ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  radius: 14,
                  child: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black,
                    size: 24,
                  )),
              title: Text('See more', style: TextStyle(fontSize:15,fontWeight: FontWeight.w600))),
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
