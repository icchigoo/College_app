import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../../Colors.dart';


class AddClass extends StatefulWidget {
  const AddClass({Key? key}) : super(key: key);

  @override
  State<AddClass> createState() => _AddClassState();
}

class _AddClassState extends State<AddClass> {
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
          child: AddClassForm(),
        ),
      ),
    );;
  }
}

class AddClassForm extends StatefulWidget {
  const AddClassForm({Key? key}) : super(key: key);

  @override
  State<AddClassForm> createState() => _AddClassFormState();
}

class _AddClassFormState extends State<AddClassForm> {

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
                hintText: 'Enter Class Id',
                labelText: 'Class Id',
                fillColor: Colors.blue,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter Class Name',
                labelText: 'Class Name',
                fillColor: Colors.blue,
              ),
            ),
            Container(
                padding: const EdgeInsets.only(left: 190.0, top: 40.0),
                child: const ElevatedButton(
                  child: Text('Submit'),
                  onPressed: null,
                )),
          ],
        ),
      ),
    );
  }
}