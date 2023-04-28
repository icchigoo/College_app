import 'package:flutter/material.dart';

class AdminMessages extends StatefulWidget {
  const AdminMessages({Key? key}) : super(key: key);

  @override
  State<AdminMessages> createState() => _AdminMessagesState();
}

class _AdminMessagesState extends State<AdminMessages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
        child: Center(child: Text("Messages",style: TextStyle(fontSize: 60),),));
  }
}
