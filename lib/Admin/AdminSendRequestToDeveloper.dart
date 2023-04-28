import 'package:flutter/material.dart';

class AdminSendRequestToDeveloper extends StatefulWidget {
  const AdminSendRequestToDeveloper({Key? key}) : super(key: key);

  @override
  State<AdminSendRequestToDeveloper> createState() => _AdminSendRequestToDeveloperState();
}

class _AdminSendRequestToDeveloperState extends State<AdminSendRequestToDeveloper> {
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.pink,
        child:
        Center(child: Text("AdminSendRequestToDeveloper",style: TextStyle(fontSize: 60),),));
  }
}
