
import 'package:college_app/RouteGenerator.dart';
import 'package:flutter/material.dart';
import 'Admin/AdminHome.dart';
import 'Components/BottomNavBar.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'E-Academia',
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,

    );
  }
}



