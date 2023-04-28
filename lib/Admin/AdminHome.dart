import 'dart:ui';
import 'package:college_app/Components/Cards.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import '../Colors.dart';
import '../Fonts.dart';



class AdminHome extends StatefulWidget {
  const AdminHome({Key? key}) : super(key: key);

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        color: Colors.blue.shade50.withOpacity(0.4),
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
        children: [

          GestureDetector(
            onTap: (){Navigator.of(context).pushNamed('/Add_Class'); },
              child: Cards('assets/classroom.svg','Add Class')
          ),
          Cards('assets/teacher.svg','Add Teacher'),
          Cards('assets/student.svg','Add Student'),
          Cards('assets/book.svg','Add Books'),
          Cards('assets/fee.svg','Fee Notification'),
          Cards('assets/notification.svg','Event Notification'),

        ],
        ),
      );
  }
}