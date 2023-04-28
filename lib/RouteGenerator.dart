import 'package:college_app/Admin/Home/addBooks.dart';
import 'package:college_app/Admin/Home/addStudent.dart';
import 'package:college_app/Admin/Home/addTeacher.dart';
import 'package:college_app/Components/BottomNavBar.dart';

import 'package:flutter/material.dart';
import 'Admin/Home/EventNotification.dart';
import 'Admin/Home/FeeNotification.dart';
import 'Admin/Home/Lists/BookList.dart';
import 'Admin/Home/Lists/ClassList.dart';
import 'Admin/Home/Lists/StudentList.dart';
import 'Admin/Home/Lists/TeacherList.dart';
import 'Admin/Home/addClass.dart';
import 'main.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings){
      final args =settings.arguments;

      switch(settings.name){
        case'/':
          return MaterialPageRoute(
              builder: (_) =>BottomNavBar());


        //-------------------ADMIN----------------//
        case '/Add_Class':
            return MaterialPageRoute(
              builder: (_)=>AddClass()
            );
        case '/Class_List':
          return MaterialPageRoute(
              builder: (_)=>ClassList()
          );
        case '/Student_List':
          return MaterialPageRoute(
              builder: (_) => StudentList()
          );
        case '/Add_Student':
          return MaterialPageRoute(
              builder: (_) => AddStudent()
          );
        case '/Add_Teacher':
          return MaterialPageRoute(
              builder: (_) => AddTeacher()
          );
        case '/Teacher_List':
          return MaterialPageRoute(
              builder: (_) => TeacherList()
          );
        case '/Add_Books':
          return MaterialPageRoute(
              builder: (_) => AddBooks()
          );
        case '/Book_List':
          return MaterialPageRoute(
              builder: (_) => BookList()
          );
        case '/Fee_Notification':
          return MaterialPageRoute(
              builder: (_) => FeeNotification()
          );
        case '/Event_Notification':
          return MaterialPageRoute(
              builder: (_) => EventNotification()
          );

      }
  }




  }
