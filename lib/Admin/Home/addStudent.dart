import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../../Colors.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({Key? key}) : super(key: key);

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-ACADEMIA',style: TextStyle(fontFamily: 'Aerial',color: white),),
        backgroundColor: blue,
        elevation: 0,

      ),
      body: Container(
        color: Colors.deepPurpleAccent.shade100.withOpacity(0.2),
        width: double.infinity,
        height: double.infinity,
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 5.0,
          ),
          child: AddStudentForm(),
        ),
      ),
    );
  }
}
class AddStudentForm extends StatefulWidget {
  const AddStudentForm({Key? key}) : super(key: key);

  @override
  State<AddStudentForm> createState() => _AddStudentFormState();
}

class _AddStudentFormState extends State<AddStudentForm> {

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(24),
      child: Form(
        key: _formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Input Student Id',
                labelText: 'Student Id',
                fillColor: Colors.blue,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter Student Name',
                labelText: 'Student Name',
                fillColor: Colors.blue,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'YY/MM/DD',
                labelText: 'Date of Birth',
                fillColor: Colors.blue,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter Phone Number',
                labelText: 'Phone Number',
                fillColor: Colors.blue,
              ),
            ),
            Container(
                padding: const EdgeInsets.only(left: 190.0, top: 40.0),
                child: const ElevatedButton(
                  child: Text('Submit'),
                  onPressed: null,
                )
            ),
          ],
        ),
      ),
    );
  }
}
