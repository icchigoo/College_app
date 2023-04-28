import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../../Colors.dart';
import '../../AdminComponents/DefaultTextField.dart';

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
        color: Colors.blue.shade50.withOpacity(0.4),
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
  _goToTeacherList(){
    Navigator.of(context).pushNamed('/Teacher_List');
  }

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(24),
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Teacher ID',style: TextStyle(fontSize: 16),),
              SizedBox(height: 10,),
              DefaultTextField(hintText: 'Teacher ID'),
              SizedBox(height: 15,),
              Text('Teacher Name',style: TextStyle(fontSize: 16),),
              SizedBox(height: 10,),
              DefaultTextField(hintText: 'Teacher Name'),
              SizedBox(height: 15,),
              Text('Subject Assigned',style: TextStyle(fontSize: 16),),
              SizedBox(height: 10,),
              DefaultTextField(hintText: 'Subject 1 Name'),
              SizedBox(height: 15,),
              Text('Contact Number',style: TextStyle(fontSize: 16),),
              SizedBox(height: 10,),
              DefaultTextField(hintText: 'Contact Number'),
              SizedBox(height: 15,),
              Text('D.O.B',style: TextStyle(fontSize: 16),),
              SizedBox(height: 10,),
              DefaultTextField(hintText: 'DOB'),
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
                  onPressed: (){ _goToTeacherList();},
                  child: Text("Show All Teacher" ,style: TextStyle(fontSize: 16),)
              ),
            ],
          ),
        ),
      ),
    );
  }


}

