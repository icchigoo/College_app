import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Colors.dart';

class AdminSendRequestToDeveloper extends StatefulWidget {
  const AdminSendRequestToDeveloper({Key? key}) : super(key: key);

  @override
  State<AdminSendRequestToDeveloper> createState() => _AdminSendRequestToDeveloperState();
}

class _AdminSendRequestToDeveloperState extends State<AdminSendRequestToDeveloper> {
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      color:  lightBlue.withOpacity(0.2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Padding(
            padding: const EdgeInsets.fromLTRB(5,0,0,0),
            child: Text('Send Feedback To Developers :',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: grey5),
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(10,0,0,0),
                border: InputBorder.none,
                fillColor: Colors.white,
                hintText: 'Subject',
                hintStyle: TextStyle(color: grey3),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),


          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: grey5),
              borderRadius: BorderRadius.circular(5),

            ),
            child: TextFormField(
              minLines: 8,
              maxLines: 15,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(10,10,0,0),
                border: InputBorder.none,
                fillColor: Colors.white,
                hintText: 'Message....',
                hintStyle: TextStyle(color: grey3),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(onPressed: (){},
              child: Text('Send Feedback',style: TextStyle(fontSize: 18),)
          ),
          SizedBox(
            height: 10,
          ),



        ],
      ),
    );
  }
}
