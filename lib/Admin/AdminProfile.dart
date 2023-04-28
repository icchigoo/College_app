
import 'package:flutter/material.dart';

import '../Colors.dart';
import '../Student/Profile/UserPreferences.dart';
import 'Profile/ProfileWidget.dart';

class AdminProfile extends StatefulWidget {
  const AdminProfile({Key? key}) : super(key: key);

  @override
  State<AdminProfile> createState() => _AdminProfileState();
}

class _AdminProfileState extends State<AdminProfile> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Container(
      color: lightBlue.withOpacity(0.2),
      child: Column(
        children: [
          SizedBox(height: 30,),
          ProfileWidget(
            imagePath : user.imagePath,
            onClicked:()async{},
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,10,0,0),
            child: Text(user.name,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,10,0,10),
            child: Text(user.email,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,color: grey2),),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.red.withOpacity(0.1),
            ),
            padding: EdgeInsets.all(8),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(4,0,4,0),
              child: Text("Admin Level",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue.withOpacity(0.1),
              ),

              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15,10,0,15),
                    child: Text("About",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15,10,20,20),
                    child: Text(user.about,style: TextStyle(fontSize: 16),textAlign: TextAlign.start,),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
