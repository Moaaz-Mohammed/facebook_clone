import 'package:facebook_clone/models/contact_model.dart';
import 'package:facebook_clone/models/group_model.dart';
import 'package:facebook_clone/models/sponsor.dart';
import 'package:facebook_clone/shared/bloc/cubit.dart';
import 'package:facebook_clone/shared/bloc/states.dart';
import 'package:facebook_clone/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RightSide extends StatelessWidget {
  const RightSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.only(left: 5, top: 10),
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
                const SizedBox(height: 10),
                const SponserModel(
                  CompanyWebsite: 'Jumia.com.eg',
                  CompanyName: 'Jumia',
                  CompanyImg: Constants.jumiaProd,
                ),
                const SponserModel(
                  CompanyWebsite: 'b-tech.com.eg',
                  CompanyName: 'B.Tech',
                  CompanyImg: Constants.btechProd,
                ),
                const Divider(),
                ListTile(
                  leading: Text(
                    'Your Pages',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w800),
                  ),
                  trailing: const Icon(Icons.more_horiz_outlined),
                ),
                const ListTile(
                  leading: CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage(Constants.girlImg),
                  ),
                  title: Text(
                    'Page name',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 5),
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: const [
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
                  margin: const EdgeInsets.only(top: 5, bottom: 5),
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: const [
                      Icon(Icons.campaign, color: Colors.grey, size: 25),
                      SizedBox(width: 5),
                      Text(
                        'Create Promotion',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      )
                    ],
                  ),
                ),
                const Divider(),
                ListTile(
                  leading: Text(
                    'Contacts',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w800),
                  ),
                  title: Container(
                    margin: EdgeInsets.only(left: width * 0.01),
                    child: Row(
                      children: [
                        Icon(Icons.video_call,
                            size: 22, color: Colors.grey[700]),
                        SizedBox(width: width * 0.002),
                        Icon(Icons.search, size: 22, color: Colors.grey[700]),
                        SizedBox(width: width * 0.002),
                        Icon(Icons.more_horiz_outlined,
                            size: 22, color: Colors.grey[700]),
                      ],
                    ),
                  ),
                ),
                const ContactModel(
                  name: 'Dwayne Johnson',
                  img: Constants.person2,
                ),
                const ContactModel(
                  name: 'Bill Gates',
                  img: Constants.person4,
                ),
                const ContactModel(
                  name: 'Elizabeth Johns',
                  img: Constants.person1,
                ),
                const ContactModel(
                  name: 'Mike Jordan',
                  img: Constants.person3,
                ),
                const ContactModel(
                  name: 'Mohamed Salah',
                  img: Constants.person5,
                ),
                const Divider(),
                ListTile(
                  leading: Text(
                    'Group conversations',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w800),
                  ),
                ),
                const GroupModel(
                  img2: Constants.person4,
                  img1: Constants.person5,
                  groupName: 'Group Name',
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
