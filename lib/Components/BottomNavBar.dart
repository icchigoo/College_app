import 'package:flutter/material.dart';

import '../Colors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

      // onTap: (index)=> setState(() => currentIndex = index ; print(index); ),
        type: BottomNavigationBarType.fixed,

        selectedItemColor: Colors.black,
        unselectedItemColor: grey1,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded) ,
            label: 'Home' ,
            backgroundColor: Colors.white,
          ),


          BottomNavigationBarItem(
            icon: Icon(Icons.messenger) ,
            label: 'Inbox' ,
            backgroundColor: Colors.blue,
          ),

          BottomNavigationBarItem(

            icon: Icon(Icons.add_circle_outlined,color: green,size: 35,),
            label: '',

          ) ,

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite) ,
            label: 'Saved' ,
            backgroundColor: Colors.blue,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle) ,
            label: 'Profile',
            backgroundColor: Colors.red,
          ),


        ]);
  }
}
