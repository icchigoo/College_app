
import 'package:flutter/material.dart';
import '../Admin/AdminHome.dart';
import '../Admin/AdminMessages.dart';
import '../Admin/AdminProfile.dart';
import '../Admin/AdminSendRequestToDeveloper.dart';
import '../Admin/AdminSetting.dart';
import '../Colors.dart';
import '../Fonts.dart';
import 'AppBarActions/TeacherSettings.dart';
import 'TeacherAssignment.dart';
import 'TeacherClasses.dart';
import 'TeacherHome.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'TeacherMessage.dart';
import 'TeacherNotes.dart';
import 'TeacherProfile.dart';

class Teacher extends StatefulWidget {

  const Teacher({Key? key}) : super(key: key);

  @override
  State<Teacher> createState() => _TeacherState();
}

class _TeacherState extends State<Teacher>with TickerProviderStateMixin {


  int currentIndex=0;
  final screens = [
    TeacherClasses(),
    TeacherMessage(),
    TeacherAssignment(),
    TeacherSettings(),
    TeacherProfile(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('E-ACADEMIA',style: bigFontStyle, ),
        backgroundColor: blue,
        elevation: 0,
        excludeHeaderSemantics: true,
        foregroundColor: Colors.white,
        actions: [
          Icon(Icons.add_ic_call_sharp),
          Padding(
            padding: EdgeInsets.fromLTRB(10,0,20,0),
            child: Icon(Icons.notifications),
          ),

        ],
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index){

            setState(() {
              currentIndex = index;
            });
          },
          // onTap: (index)=> setState(() => currentIndex = index ),
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex ,
          selectedItemColor: Colors.black,
          unselectedItemColor: grey1,
          items:  [
            BottomNavigationBarItem(
              icon: Icon(Icons.class_),
              label: 'Classes' ,
              backgroundColor: Colors.white,
            ),


            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.solidMessage) ,
              label: 'Message' ,
              backgroundColor: Colors.blue,
            ),

            BottomNavigationBarItem(

              icon: Icon(Icons.add_circle_outlined,color: Colors.blue,size: 35,),
              label: '',

            ) ,

            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings' ,
              backgroundColor: Colors.blue,
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle) ,
              label: 'Profile',
              backgroundColor: Colors.red,
            ),


          ]) ,
    );

  }
}
