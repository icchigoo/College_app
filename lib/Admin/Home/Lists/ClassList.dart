import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Colors.dart';
class ClassList extends StatefulWidget {
  const ClassList({Key? key}) : super(key: key);

  @override
  State<ClassList> createState() => _ClassListState();
}

class _ClassListState extends State<ClassList> {
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
                color: white,
              borderRadius: BorderRadius.circular(10),
            ),
            columnWidths: {
              0: FractionColumnWidth(0.2),
              1: FractionColumnWidth(0.4),
              2: FractionColumnWidth(0.4),
            },
            children: [
              buildRow(['No.','Class Name','Action'],isHeader: true),
              buildRow(['1','BESE_2018','Action']),
              buildRow(['2','BESE_2019','Action']),
              buildRow(['2','BECE_2018','Action']),
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
