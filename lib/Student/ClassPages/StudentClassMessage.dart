
import 'package:college_app/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class StudentClassMessage extends StatefulWidget {
  const StudentClassMessage({Key? key}) : super(key: key);

  @override
  State<StudentClassMessage> createState() => _StudentClassMessageState();
}

class _StudentClassMessageState extends State<StudentClassMessage > {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            Text("No Class Today"),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: green,
                              ),

                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10),
                                child: Text("New",style: TextStyle(color: Colors.white),),
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
                            Text("Sent by: Man Bahadur",textAlign: TextAlign.start,),
                            Text("Sent:Yesterday",textAlign: TextAlign.end,),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),

    );
  }
}
