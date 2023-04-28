import 'package:college_app/Admin/Home/addBooks.dart';
import 'package:college_app/Admin/Home/addStudent.dart';
import 'package:college_app/Admin/Home/addTeacher.dart';
import 'package:college_app/Components/BottomNavBar.dart';
import 'package:flutter/material.dart';
import 'Admin/Home/addClass.dart';
import 'main.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings){
      final args =settings.arguments;

      switch(settings.name){
        case'/':
          return MaterialPageRoute(
              builder: (_) =>BottomNavBar());

        case '/Add_Class':
            return MaterialPageRoute(
              builder: (_)=>AddClass()
            );
        case '/Add_Student':
          return MaterialPageRoute(
              builder: (_) => AddStudent()
          );
        case '/Add_Teacher':
          return MaterialPageRoute(
              builder: (_) => AddTeacher()
          );
        case '/Add_Books':
          return MaterialPageRoute(
              builder: (_) => AddBooks()
          );
      }
  }




  }