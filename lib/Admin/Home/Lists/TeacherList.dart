import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Colors.dart';
class TeacherList extends StatefulWidget {
  const TeacherList({Key? key}) : super(key: key);

  @override
  State<TeacherList> createState() => _TeacherListState();
}

class _TeacherListState extends State<TeacherList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      appBar: AppBar(
        title: Text('E-ACADEMIA',style: TextStyle(fontFamily: 'Aerial',color: white),),
        backgroundColor: blue,
        elevation: 0,

      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10,20,10,0),
        child: Container(
          color: white,
          child: Table(
            border: TableBorder.all(
              color: grey4,
              borderRadius: BorderRadius.circular(10),
            ),
            columnWidths: {
              0: FractionColumnWidth(0.2),
              1: FractionColumnWidth(0.4),
              2: FractionColumnWidth(0.4),
            },
            children: [
              buildRow(['No.','Teacher Name','Class Assigned'],isHeader: true),
              buildRow(['1','Sujan Tamrakar','BESE_2018 \nBESE_2019 \nBECE_2018']),
              buildRow(['2','Bikash Bhattarai','BESE_2018 \nBESE_2019 \nBECE_2018']),
              buildRow(['3','Pratikshya Poudel','BESE_2018 \nBESE_2019 \nBECE_2018']),
            ],
          ),
        ),
      ),
    );
  }
}
TableRow buildRow(List<String>cells , {bool isHeader =false} ){
  return TableRow(
    children: cells.map((cell) =>
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(cell,style: isHeader ?GoogleFonts.manrope(fontSize: 16,fontWeight: FontWeight.bold)   : GoogleFonts.manrope(fontSize: 16) ,
          ),
        )).toList(),
  );

}
