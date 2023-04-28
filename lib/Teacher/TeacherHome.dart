import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Colors.dart';
import '../Fonts.dart';

final faculties=[
  '-- SELECT YOUR CLASS --',
  'BESE_2015 (AOS)',
  'BESE_2016 (DSA)',
  'BESE_2017 (ADA)',
  'BESE_2018 (EE)',

];

class TeacherHome extends StatefulWidget {
  const TeacherHome({Key? key}) : super(key: key);

  @override
  State<TeacherHome> createState() => _TeacherHomeState();
}

class _TeacherHomeState extends State<TeacherHome>with MaterialStateMixin {
  Color tileColor1=Colors.white;
  Color tileColor2=Colors.white;
  Color tileColor3=Colors.white;
  Color tileColor4=Colors.white;
  Color tileColor5=Colors.white;
  Color tileColor6=Colors.white;
  markAllPresent(){
    tileColor1=green.withOpacity(0.2);
    tileColor2=green.withOpacity(0.2);
     tileColor3=green.withOpacity(0.2);
     tileColor4=green.withOpacity(0.2);
     tileColor5=green.withOpacity(0.2);
     tileColor6=green.withOpacity(0.2);
  }
  markAllAbsent(){
    tileColor1=red.withOpacity(0.2);
    tileColor2=red.withOpacity(0.2);
    tileColor3=red.withOpacity(0.2);
    tileColor4=red.withOpacity(0.2);
    tileColor5=red.withOpacity(0.2);
    tileColor6=red.withOpacity(0.2);
  }
  markAllNeutral(){
    tileColor1=Colors.white;
    tileColor2=Colors.white;
    tileColor3=Colors.white;
    tileColor4=Colors.white;
    tileColor5=Colors.white;
    tileColor6=Colors.white;
  }

  String? value= faculties[0];
  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: blue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            )
                          ),

                          width: width,
                          height: 50,
                          child: Row(
                           children: [
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 10.0),
                               child: Container(
                                   child: Text("SN No.",style: TextStyle(color: white),
                                   ),
                                 width: width*0.12,
                               ),
                             ),
                             Container(
                               child: Text("Student Name",style: TextStyle(color: white,fontSize: 14),
                               ),
                               width: width*0.32,
                             ),
                             Container(

                               child: Text("Status",style: TextStyle(color: white,fontSize: 14),
                               ),
                               width: width*0.16,
                             ),
                             GestureDetector(
                               onTap: (){
                                 setState(() {
                                   markAllPresent();
                                 });
                               },
                               child: Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 8),
                                 child: Icon(Icons.check_circle,color: white,),
                               ),
                             ),
                             GestureDetector(
                               onTap: (){
                                 setState(() {
                                   markAllAbsent();
                                 });
                               }
                               ,
                               child: Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 8),
                                 child: Icon(Icons.close,color: white,),
                               ),
                             ),
                             GestureDetector(
                               onTap: (){
                                 setState(() {
                                   markAllNeutral();
                                 });
                               },
                               child: Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 8),
                                 child: FaIcon(FontAwesomeIcons.equals,color: white,),
                               ),
                             ),
                           ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,0,3),
                          child: ListTile(
                            tileColor: tileColor1,
                            title: Text("1,         Abiral Pokhrel"),
                            trailing: Container(
                              width: 180,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                    child: ElevatedButton(
                                        onPressed: (){
                                          setState(() {
                                            tileColor1 = green.withOpacity(0.2);
                                          });
                                          },
                                        child: Text("Present"),
                                        style: ElevatedButton.styleFrom(
                                          primary: green,
                                        )
                                    ),

                                  ),

                                  ElevatedButton(
                                      onPressed: (){
                                        setState(() {
                                          tileColor1 = red.withOpacity(0.2);
                                        });
                                      },
                                      child: Text("Absent"),
                                      style: ElevatedButton.styleFrom(
                                        primary: red,
                                      )
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,0,3),
                          child: ListTile(
                            tileColor: tileColor2,
                            title: Text("2,         Abiral Pokhrel"),
                            trailing: Container(
                              width: 180,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                    child: ElevatedButton(
                                        onPressed: (){
                                          setState(() {
                                            tileColor2 = green.withOpacity(0.2);
                                          });
                                        },
                                        child: Text("Present"),
                                        style: ElevatedButton.styleFrom(
                                          primary: green,
                                        )
                                    ),

                                  ),

                                  ElevatedButton(
                                      onPressed: (){
                                        setState(() {
                                          tileColor2 = red.withOpacity(0.2);
                                        });
                                      },
                                      child: Text("Absent"),
                                      style: ElevatedButton.styleFrom(
                                        primary: red,
                                      )
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,0,3),
                          child: ListTile(
                            tileColor: tileColor3,
                            title: Text("3,         Abiral Pokhrel"),
                            trailing: Container(
                              width: 180,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                    child: ElevatedButton(
                                        onPressed: (){
                                          setState(() {
                                            tileColor3 = green.withOpacity(0.2);
                                          });
                                        },
                                        child: Text("Present"),
                                        style: ElevatedButton.styleFrom(
                                          primary: green,
                                        )
                                    ),

                                  ),

                                  ElevatedButton(
                                      onPressed: (){
                                        setState(() {
                                          tileColor3 = red.withOpacity(0.2);
                                        });
                                      },
                                      child: Text("Absent"),
                                      style: ElevatedButton.styleFrom(
                                        primary: red,
                                      )
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,0,3),
                          child: ListTile(
                            tileColor: tileColor4,
                            title: Text("4,         Abiral Pokhrel"),
                            trailing: Container(
                              width: 180,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                    child: ElevatedButton(
                                        onPressed: (){
                                          setState(() {
                                            tileColor4 = green.withOpacity(0.2);
                                          });
                                        },
                                        child: Text("Present"),
                                        style: ElevatedButton.styleFrom(
                                          primary: green,
                                        )
                                    ),

                                  ),

                                  ElevatedButton(
                                      onPressed: (){
                                        setState(() {
                                          tileColor4 = red.withOpacity(0.2);
                                        });
                                      },
                                      child: Text("Absent"),
                                      style: ElevatedButton.styleFrom(
                                        primary: red,
                                      )
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,0,3),
                          child: ListTile(
                            tileColor: tileColor5,
                            title: Text("5,         Abiral Pokhrel"),
                            trailing: Container(
                              width: 180,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                    child: ElevatedButton(
                                        onPressed: (){
                                          setState(() {
                                            tileColor5 = green.withOpacity(0.2);
                                          });
                                        },
                                        child: Text("Present"),
                                        style: ElevatedButton.styleFrom(
                                          primary: green,
                                        )
                                    ),

                                  ),

                                  ElevatedButton(
                                      onPressed: (){
                                        setState(() {
                                          tileColor5 = red.withOpacity(0.2);
                                        });
                                      },
                                      child: Text("Absent"),
                                      style: ElevatedButton.styleFrom(
                                        primary: red,
                                      )
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,0,3),
                          child: ListTile(
                            tileColor: tileColor6,
                            title: Text("6,         Abiral Pokhrel"),
                            trailing: Container(
                              width: 180,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                    child: ElevatedButton(
                                        onPressed: (){
                                          setState(() {
                                            tileColor6 = green.withOpacity(0.2);
                                          });
                                        },
                                        child: Text("Present"),
                                        style: ElevatedButton.styleFrom(
                                          primary: green,
                                        )
                                    ),

                                  ),

                                  ElevatedButton(
                                      onPressed: (){
                                        setState(() {
                                          tileColor6 = red.withOpacity(0.2);
                                        });
                                      },
                                      child: Text("Absent"),
                                      style: ElevatedButton.styleFrom(
                                        primary: red,
                                      )
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: blue
                            ),
                              onPressed: (){},
                              child: Text("Submit",style:TextStyle(fontSize: 18),
                          ),
                        ),
                        ),

                      ],
                    ),
                  ),
            ],
          ),
        ),
    );
  }
}

DropdownMenuItem<String> buildMenuItem(String faculty){
  return DropdownMenuItem(
      value: faculty,
      child: Text(
        faculty,
      ));

}