import 'package:flutter/material.dart';

class AdminProfile extends StatefulWidget {
  const AdminProfile({Key? key}) : super(key: key);

  @override
  State<AdminProfile> createState() => _AdminProfileState();
}

class _AdminProfileState extends State<AdminProfile> {
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.deepOrange,
        child: Center(child: Text("Profiles",style: TextStyle(fontSize: 60),),));
  }
}
