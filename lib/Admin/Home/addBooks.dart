import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../../Colors.dart';
import '../../Components/DefaultTextField.dart';

class AddBooks extends StatefulWidget {
  const AddBooks({Key? key}) : super(key: key);

  @override
  State<AddBooks> createState() => _AddBooksState();
}

class _AddBooksState extends State<AddBooks> {
  _goToBookList(){
    Navigator.of(context).pushNamed('/Book_List');
  }
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('E-ACADEMIA',style: TextStyle(fontFamily: 'Aerial',color: white),),
        backgroundColor: blue,
        elevation: 0,

      ),
      body: Container(
        color: Colors.blue.shade50.withOpacity(0.4),
        width: double.infinity,
        height: double.infinity,
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 5.0,
          ),
          child: Container(
            margin: const EdgeInsets.all(24),
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Book Id',style: TextStyle(fontSize: 16),),
                  SizedBox(height: 10,),
                  DefaultTextField(hintText: 'Book Id'),
                  SizedBox(height: 15,),
                  Text('Book Name',style: TextStyle(fontSize: 16),),
                  SizedBox(height: 10,),
                  DefaultTextField(hintText: 'Book Name'),
                  SizedBox(height: 15,),
                  Text('Borrowed Date',style: TextStyle(fontSize: 16),),
                  SizedBox(height: 10,),
                  DefaultTextField(hintText: 'YY/MM/DD'),
                  SizedBox(height: 15,),
                  Text('Return Date',style: TextStyle(fontSize: 16),),
                  SizedBox(height: 10,),
                  DefaultTextField(hintText: 'YY/MM/DD'),
                  SizedBox(height: 15,),
                  ElevatedButton(onPressed: (){}, child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text('Submit',style: TextStyle(fontSize: 18),),
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: green,
                      ),
                      onPressed: (){ _goToBookList();},
                      child: Text("Show Books" ,style: TextStyle(fontSize: 16),)
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


