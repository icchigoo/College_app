import 'package:flutter/material.dart';

import '../Colors.dart';

class StudentSettings extends StatefulWidget {
  const StudentSettings({Key? key}) : super(key: key);

  @override
  State<StudentSettings> createState() => _StudentSettingsState();
}

class _StudentSettingsState extends State<StudentSettings> {
  @override
  bool switch1=true;
  bool switch2=true;
  bool switch3=true;
  bool switch4=true;


  Widget build(BuildContext context) {
    return Container(
      color: lightBlue.withOpacity(0.2),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10,20,10,0),
        child: ListView(
          children:[
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 20),
              child: Text("Settings",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,10,0,0),
              child: Row(
                children: [
                  Icon(Icons.widgets_sharp,size: 30,color: blue,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8,0,0,0),
                    child: Text("Data",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  ),
                ],
              ),
            ),
            Divider(),
            Card(
              child: ListTile(
                title: Text("Change Class",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: grey1
                  ),),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: (){},
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Change Batch",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: grey1
                  ),),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: (){},
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Give Feedback",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: grey1
                  ),),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: (){},
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,15,0,0),
              child: Row(
                children: [
                  Icon(Icons.account_circle_rounded,size: 30,color: blue,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8,0,0,0),
                    child: Text("Account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  ),
                ],
              ),
            ),
            Divider(),

            Card(
              child: ListTile(
                title: Text("Change Password",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: grey1
                  ),),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: (){},
              ),
            ),

            Card(
              child: ListTile(
                title: Text("Language",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: grey1
                  ),),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: (){},
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Privacy and Security",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: grey1
                  ),),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: (){},
              ),
            ),
            Card(
              child: ListTile(

                title: Text("Sign Out",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: grey1
                  ),),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: (){
                  Navigator.pushNamed(context, '/Login');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

