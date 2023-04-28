
import 'package:college_app/Student/StudentManageBook.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Admin/AdminHome.dart';
import '../Admin/AdminMessages.dart';
import '../Admin/AdminProfile.dart';
import '../Admin/AdminSendRequestToDeveloper.dart';
import '../Admin/AdminSetting.dart';
import '../Colors.dart';
import '../Fonts.dart';
import '../Student/StudentDownloadNotes.dart';
import '../Student/StudentHome.dart';
import '../Student/StudentProfile.dart';
import '../Student/StudentSettings.dart';

class Student extends StatefulWidget {
  const Student({Key? key}) : super(key: key);

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student>with TickerProviderStateMixin {

  int currentIndex=0;
  final screens = [
    StudentHome(),
    StudentManageBook(),
    StudentDownloadNotes(),
    StudentSettings(),
    StudentProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-ACADEMIA',style: GoogleFonts.bebasNeue(
          fontSize: 30
        ) , ),
        backgroundColor: blue,
        elevation: 0,
        excludeHeaderSemantics: true,
        foregroundColor: Colors.white,
        actions:const [
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
              icon: FaIcon(FontAwesomeIcons.home) ,
              label: 'Home' ,
              backgroundColor: Colors.white,
            ),


            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.book) ,
              label: 'Books' ,
              backgroundColor: Colors.blue,
            ),

            BottomNavigationBarItem(

              icon: FaIcon(FontAwesomeIcons.download) ,
              label: 'Downloads' ,

            ) ,

            BottomNavigationBarItem(
              icon: Icon(Icons.settings) ,
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
