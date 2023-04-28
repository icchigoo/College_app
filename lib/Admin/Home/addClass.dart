import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../Colors.dart';
int getThisYear(){
  var now = new DateTime.now();
  var formatter = new DateFormat('yyyy');
  String formattedDate = formatter.format(now);
  return(int.parse(formattedDate));

}
final faculty=['BESE(Software)','BECE(Computer)'];
int thisYear= getThisYear();
final year =[
  '${thisYear+1}','$thisYear','${thisYear-1}','${thisYear-2}','${thisYear-3}','${thisYear-4}',
  '${thisYear-5}',
];
class AddClass extends StatefulWidget {
  const AddClass({Key? key}) : super(key: key);

  @override
  State<AddClass> createState() => _AddClassState();
}

class _AddClassState extends State<AddClass> {
  final _formkey = GlobalKey<FormState>();
  String? value = faculty[0];
  String? value2=year[0];
  _goToClassList(){
    Navigator.of(context).pushNamed('/Class_List');
  }

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
                  Text('Faculty',style: TextStyle(fontSize: 16),),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: grey5),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                          iconSize: 35,
                          icon: Icon(Icons.arrow_drop_down_sharp),
                          value: value,
                          isExpanded: true,
                          items: faculty.map(buildMenuItem).toList(),
                          onChanged: (value){ setState(() {
                            this.value=value;
                          });}
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text('Year',style: TextStyle(fontSize: 16),),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: grey5),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                          iconSize: 35,
                          icon: Icon(Icons.arrow_drop_down_sharp),
                          value: value2,
                          isExpanded: true,
                          items: year.map(buildMenuItem2).toList(),
                          onChanged: (value2){ setState(() {
                            this.value2=value2;
                          });}
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),

                  ElevatedButton(
                      onPressed: (){
                      }, child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text('Create',style: TextStyle(fontSize: 18),),
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: green,
                      ),
                      onPressed: (){ _goToClassList();},
                      child: Text("Show All Classes" ,style: TextStyle(fontSize: 16),)
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




DropdownMenuItem<String> buildMenuItem(String faculty){
  return DropdownMenuItem(
    value: faculty,
      child: Text(
        faculty,

  ));

}
DropdownMenuItem<String> buildMenuItem2(String year){
  return DropdownMenuItem(
      value: year,
      child: Text(
        year,
      ));

}