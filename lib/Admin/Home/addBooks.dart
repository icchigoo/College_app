import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../../Colors.dart';

class AddBooks extends StatefulWidget {
  const AddBooks({Key? key}) : super(key: key);

  @override
  State<AddBooks> createState() => _AddBooksState();
}

class _AddBooksState extends State<AddBooks> {
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
          child: AddBooksForm(),
        ),
      ),
    );
  }
}
class AddBooksForm extends StatefulWidget {
  const AddBooksForm({Key? key}) : super(key: key);

  @override
  State<AddBooksForm> createState() => _AddBooksFormState();
}

class _AddBooksFormState extends State<AddBooksForm> {
  
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
                hintText: 'Enter Book Id',
                labelText: 'Book Id',
                fillColor: Colors.blue,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter Book Name',
                labelText: 'Book Name',
                fillColor: Colors.blue,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'YY/MM/DD',
                labelText: 'Borrowed Date',
                fillColor: Colors.blue,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'YY/MM/DD',
                labelText: 'Return Date',
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
