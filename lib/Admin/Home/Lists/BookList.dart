import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Colors.dart';

final faculty=[
  'BESE_2018',
  'BESE_2019',
  'BESE_2020',
  'BESE_2021',
  'BECE_2018',
  'BECE_2019',
  'BECE_2020',
  'BECE_2021',
];

class BookList extends StatefulWidget {
  const BookList({Key? key}) : super(key: key);

  @override
  State<BookList> createState() => _BookListState();
}

class _BookListState extends State<BookList> {
  String? value = faculty[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      appBar: AppBar(
        title: Text('E-ACADEMIA',style: TextStyle(fontFamily: 'Aerial',color: white),),
        backgroundColor: blue,
        elevation: 0,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10,20,10,0),
              child: Container(
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
            ),
            Padding(
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
                    1: FractionColumnWidth(0.5),
                    2: FractionColumnWidth(0.3),
                  },
                  children: [
                    buildRow(['No.','Book Name','Code Number'],isHeader: true),
                    buildRow(['1','Engineering Economics','234']),
                    buildRow(['2','Programming Language','789']),
                    buildRow(['3','Maths-I','567']),
                    buildRow(['1','Engineering Economics','234']),
                    buildRow(['2','Programming Language','789']),
                    buildRow(['3','Maths-I','567']),
                    buildRow(['1','Engineering Economics','234']),
                    buildRow(['2','Programming Language','789']),
                    buildRow(['3','Maths-I','567']),

                  ],
                ),
              ),
            ),
          ],
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
DropdownMenuItem<String> buildMenuItem(String faculty){
  return DropdownMenuItem(
      value: faculty,
      child: Text(
        faculty,

      ));

}