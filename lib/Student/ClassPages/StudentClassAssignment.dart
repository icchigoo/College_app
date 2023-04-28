import 'package:flutter/material.dart';

import '../../Colors.dart';
class StudentClassAssignment extends StatefulWidget {
  const StudentClassAssignment({Key? key}) : super(key: key);

  @override
  State<StudentClassAssignment> createState() => _StudentClassAssignmentState();
}

class _StudentClassAssignmentState extends State<StudentClassAssignment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: EdgeInsets.symmetric(vertical : 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Assignment Title"),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: red,
                        ),

                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10),
                          child: Text("Not Submitted",style: TextStyle(color: Colors.white),),
                        ),
                      )
                    ],
                  ),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.symmetric(vertical : 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Assigned Date : 2 Aug",textAlign: TextAlign.start,),
                      Text("Deadline : 6 Aug",textAlign: TextAlign.end,),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              child: ListTile(
                tileColor: Colors.white,
                title: Padding(
                  padding: EdgeInsets.symmetric(vertical : 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Assignment Title"),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: green,
                        ),

                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10),
                          child: Text("Submitted",style: TextStyle(color: Colors.white),),
                        ),
                      )
                    ],
                  ),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.symmetric(vertical : 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Assigned Date : 2 Aug",textAlign: TextAlign.start,),
                      Text("Deadline : 6 Aug",textAlign: TextAlign.end,),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
