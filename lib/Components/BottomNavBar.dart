
import 'package:flutter/material.dart';
import '../Admin/AdminHome.dart';
import '../Admin/AdminMessages.dart';
import '../Admin/AdminProfile.dart';
import '../Admin/AdminSendRequestToDeveloper.dart';
import '../Admin/AdminSetting.dart';
import '../Colors.dart';
import '../Fonts.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>with TickerProviderStateMixin {

  int currentIndex=0;
  final screens = [
    AdminHome(),
    AdminMessages(),
    AdminSendRequestToDeveloper(),
    AdminSetting(),
    AdminProfile(),
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
              icon: Icon(Icons.home_rounded) ,
              label: 'Home' ,
              backgroundColor: Colors.white,
            ),


            BottomNavigationBarItem(
              icon: Icon(Icons.messenger) ,
              label: 'Message' ,
              backgroundColor: Colors.blue,
            ),

            BottomNavigationBarItem(

              icon: Icon(Icons.add_circle_outlined,color: Colors.blue,size: 35,),
              label: '',

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