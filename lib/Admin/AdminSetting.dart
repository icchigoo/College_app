import 'package:flutter/material.dart';

import '../Colors.dart';

class AdminSetting extends StatefulWidget {
  const AdminSetting({Key? key}) : super(key: key);

  @override
  State<AdminSetting> createState() => _AdminSettingState();
}

class _AdminSettingState extends State<AdminSetting> {
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
                    child: Text("Database",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  ),
                ],
              ),
            ),
            Divider(),
            Card(
              child: SwitchListTile(

                title: Text("Limit Number of Batches To 20",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: grey1
                  ),), value: switch1,
                onChanged: (value){
                  setState(() {
                    switch1 = !switch1;
                  });
                },

              ),
            ),
            Card(
              child: SwitchListTile(

                title: Text("Limit Batch Size to 50",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: grey1
                  ),), value: switch2,
                onChanged: (value){
                  setState(() {
                    switch2 = !switch2;

                  });
                },

              ),
            ),
            Card(
              child: SwitchListTile(
                title: Text("Limit Number Of Teachers To 50",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: grey1
                  ),), value: switch3,
                onChanged: (value){
                  setState(() {
                    switch3 = !switch3;
                  });
                },

              ),
            ),
            Card(
              child: SwitchListTile(
                title: Text("Limit Number Of Books to 400",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: grey1
                  ),), value: switch4,
                onChanged: (value){
                  setState(() {
                    switch4 = !switch4;
                  });
                },

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
