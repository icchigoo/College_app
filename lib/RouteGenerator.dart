
import 'package:college_app/Components/BottomNavBar.dart';
import 'package:flutter/material.dart';

import 'Home/addClass.dart';
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

          }
      }




  }