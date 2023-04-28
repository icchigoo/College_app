import 'package:flutter/material.dart';

import '../Colors.dart';
class TeacherClasses extends StatefulWidget {
  const TeacherClasses({Key? key}) : super(key: key);

  @override
  State<TeacherClasses> createState() => _TeacherClassesState();
}

class _TeacherClassesState extends State<TeacherClasses> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 10),
      child:
      GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, '/ClassHomePage');
        },
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [

                Colors.greenAccent.shade400,
                Colors.greenAccent,
              ],
            ),
            borderRadius: BorderRadius.circular(20),
            color: green,
          ),
          height: 150,
          width: 800,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Computer Network",style: TextStyle(color: white,fontSize: 20),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Software",style: TextStyle(color: white,fontSize: 16),),
                    Text("BESE 2018",style: TextStyle(color: white,fontSize: 16),),
                  ],
                ),

              ],
            ),
          ),

        ),
      ),
    );
  }
}
