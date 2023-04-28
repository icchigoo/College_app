
import 'package:college_app/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class StudentManageBook extends StatefulWidget {
  const StudentManageBook({Key? key}) : super(key: key);

  @override
  State<StudentManageBook> createState() => _StudentManageBookState();
}

class _StudentManageBookState extends State<StudentManageBook> {
  int i =0;
  bool checker1 =false;
  bool checker2 =false;
  bool checker3 =false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10,20,10,10),
              child: Text("Book List",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
            ),
            Card(
              child: ListTile(
              onTap: (){
                setState(() {});
                 checker1=!checker1;
                 ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(
                     behavior: SnackBarBehavior.floating,
                     width: 350,
                       duration: const Duration(milliseconds: 1000),
                     backgroundColor: checker1 ? green :red,
                       elevation: 0,
                       content:  checker1 ?Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           color: green,
                         ),
                         child: ListTile(
                          leading: FaIcon(FontAwesomeIcons.solidCircleCheck,color: white,size: 40,),
                          title:  Text("Success",style: TextStyle(fontWeight: FontWeight.w700,color: white),),
                           subtitle: Text("Reminder for the book is set for 6th September ",style: TextStyle(color: white),),

                   ),
                       ) :
                       Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(30),
                           color: red,
                         ),
                         child: ListTile(
                           leading:
                           Icon(Icons.highlight_remove_outlined,color: white,size: 40,),
                           title:  Text("Reminder Removed",style: TextStyle(fontWeight: FontWeight.w700,color: white),),
                           subtitle: Text("Reminder for the book was removed ",style: TextStyle(color: white),),

                         ),
                       )
                   )
                 );
                },
                title: Text("Engineering Economics"),
                subtitle: Padding(
                 padding: const EdgeInsets.symmetric(vertical: 8.0),
                 child: Text("Text Book"),
                ),
                trailing:checker1 == true ? FaIcon(FontAwesomeIcons.solidCircleCheck,color: green,):FaIcon(FontAwesomeIcons.solidCircleCheck),
                ),
              ),
            Card(
              child: ListTile(
                onTap: (){
                  setState(() {});
                  checker2=!checker2;
                },
                title: Text("Engineering Economics"),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text("Text Book"),
                ),
                trailing:checker2 == true ? FaIcon(FontAwesomeIcons.solidCircleCheck,color: green,):FaIcon(FontAwesomeIcons.solidCircleCheck),
              ),
            ),
            Card(
              child: ListTile(
                onTap: (){
                  setState(() {});
                  checker3=!checker3;
                },
                title: Text("Engineering Economics"),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text("Text Book"),
                ),
                trailing:checker3 == true ? FaIcon(FontAwesomeIcons.solidCircleCheck,color: green,):FaIcon(FontAwesomeIcons.solidCircleCheck),
              ),
            ),


          ],
        ),
      ),
    );
  }
}

