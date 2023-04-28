
import 'package:college_app/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../AdminComponents/DefaultTextField.dart';
class ClassMessage extends StatefulWidget {
  const ClassMessage({Key? key}) : super(key: key);

  @override
  State<ClassMessage> createState() => _ClassMessageState();
}

class _ClassMessageState extends State<ClassMessage> {
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
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          color: Colors.grey.shade50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 350,
                child: DefaultTextField(
                  hintText: "Message...",
                ),
              ),
              FaIcon(FontAwesomeIcons.arrowRight,color: blue,),
            ],
          ),
        ),
      ),
    );
  }
}
