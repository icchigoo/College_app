import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../../Colors.dart';
import '../../Components/DefaultTextField.dart';

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
        color: Colors.blue.shade50.withOpacity(0.4),
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
  _goToStudentList(){
    Navigator.of(context).pushNamed('/Student_List');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(24),
      child: Form(
        key: _formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Text('Student ID',style: TextStyle(fontSize: 16),),
            SizedBox(height: 10,),
            DefaultTextField(hintText: 'Student ID'),
            SizedBox(height: 15,),
            Text('Student Full Name',style: TextStyle(fontSize: 16),),
            SizedBox(height: 10,),
            DefaultTextField(hintText: 'Student Full Name'),
            SizedBox(height: 15,),
            Text('Batch Name',style: TextStyle(fontSize: 16),),
            SizedBox(height: 10,),
            DefaultTextField(hintText: 'Batch Name'),
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
                onPressed: (){ _goToStudentList();},
                child: Text("Show Students" ,style: TextStyle(fontSize: 16),)
            ),
            SizedBox(height: 15,),
            Divider(),
            SizedBox(height: 10,),
            Center(
              child: Text('OR',style: TextStyle(fontSize: 18),),
            ),
            SizedBox(height: 10,),
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: blue,
                    
                  ),
                  onPressed: (){ },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,10,0),
                        child: Icon(Icons.insert_drive_file_rounded),
                      ),
                      Text("Upload Via CSV file" ,style: TextStyle(fontSize: 16),),
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}

