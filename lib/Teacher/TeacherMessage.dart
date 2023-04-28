import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Colors.dart';
import '../TeacherComponents/DefaultTextField.dart';
final faculties=[
  '-- SELECT YOUR CLASS --',
  'BESE_2015 (AOS)',
  'BESE_2016 (DSA)',
  'BESE_2017 (ADA)',
  'BESE_2018 (EE)',

];
class TeacherMessage extends StatefulWidget {
  const TeacherMessage({Key? key}) : super(key: key);

  @override
  State<TeacherMessage> createState() => _TeacherMessageState();
}

class _TeacherMessageState extends State<TeacherMessage> {
  String? value = faculties[0];
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
        color:  lightBlue.withOpacity(0.2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Padding(
              padding: const EdgeInsets.fromLTRB(5,0,0,0),
              child: Text('Send Message To Admin',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
            ),
            SizedBox(
              height: 10,
            ),

            DefaultTextField(hintText: 'Title'),
            SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: grey5),
                borderRadius: BorderRadius.circular(5),

              ),
              child: TextFormField(
                minLines: 5,
                maxLines: 10,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(10,10,0,10),
                  border: InputBorder.none,
                  fillColor: Colors.white,
                  hintText: 'Message....',
                  hintStyle: TextStyle(color: grey3),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: blue,
              ),
                onPressed: (){},
                child: Text('Submit',style: TextStyle(fontSize: 18),)
            ),

          ],
        ),
      ),
    );
  }
}
DropdownMenuItem<String> buildMenuItem(String faculty){
  return DropdownMenuItem(
      value: faculty,
      child: Text(
        faculty,
      ));

}