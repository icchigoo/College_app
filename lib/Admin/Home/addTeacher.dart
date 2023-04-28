import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../../Colors.dart';

class AddTeacher extends StatefulWidget {
  const AddTeacher({Key? key}) : super(key: key);

  @override
  State<AddTeacher> createState() => _AddTeacherState();
}

class _AddTeacherState extends State<AddTeacher> {
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
          child: AddTeacherForm(),
        ),
      ),
    );
  }
}
class AddTeacherForm extends StatefulWidget {
  const AddTeacherForm({Key? key}) : super(key: key);

  @override
  State<AddTeacherForm> createState() => _AddTeacherFormState();
}

class _AddTeacherFormState extends State<AddTeacherForm> {

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
                hintText: 'Enter Teacher Id',
                labelText: 'Teacher Id',
                fillColor: Colors.blue,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter Teacher Name',
                labelText: 'Teacher Name',
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
                  onPressed: null,
                  child: Text('Submit')
              ),
            )
          ],
        ),
      ),
    );
  }
}
