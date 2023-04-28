import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Colors.dart';
import '../TeacherComponents/DefaultTextField.dart';
final faculties=[
  '-- SELECT Class Batch --',
  'BESE_2015',
  'BESE_2016',
  'BESE_2017',
  'BESE_2018',

];
class TeacherAssignment extends StatefulWidget {
  const TeacherAssignment({Key? key}) : super(key: key);

  @override
  State<TeacherAssignment> createState() => _TeacherAssignmentState();
}

class _TeacherAssignmentState extends State<TeacherAssignment> {
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
              child: Text('Create Class',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
            ),
            SizedBox(
              height: 10,
            ),
            DefaultTextField(hintText: ' Class Name'),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: grey5),
                borderRadius: BorderRadius.circular(5),
              ),
              child: DropdownButtonHideUnderline(
                child:
                DropdownButton<String>(
                    iconSize: 35,
                    icon: Icon(Icons.arrow_drop_down_sharp),
                    value: value,
                    isExpanded: true,
                    items: faculties.map(buildMenuItem).toList(),
                    onChanged: (value){ setState(() {
                      this.value=value;
                    });}
                ),
              ),
            ),
            SizedBox(height: 15,),

            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 14.0),
            //   child: ElevatedButton(
            //       style: ElevatedButton.styleFrom(
            //           primary: blue,
            //           minimumSize: Size(800, 40)
            //       ),
            //       onPressed: (){},
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Padding(
            //             padding: const EdgeInsets.symmetric(horizontal: 8.0),
            //             child: FaIcon(FontAwesomeIcons.file),
            //           ),
            //           Text("Attach File",style: TextStyle(fontSize: 18),),
            //         ],
            //
            //       )),
            // ),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: blue,
                ),
                onPressed: (){},
                child: Text('Submit',style: TextStyle(fontSize: 18),)
            ),
            SizedBox(
              height: 10,
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